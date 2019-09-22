/// @description Create buttons and handle directional player input
// create buttons
if (!buttons_initialized) {
	initialize_buttons();
	buttons_initialized = true;
}

if (instance_exists(obj_progress_loader)) {
	world_1_count = ds_list_size(obj_progress_loader.world_1);
	world_2_count = ds_list_size(obj_progress_loader.world_2);
	world_3_count = ds_list_size(obj_progress_loader.world_3);
	world_4_count = ds_list_size(obj_progress_loader.world_4);
}

if ((gamepad_button_check_pressed(0, gp_padr) || (gamepad_axis_value(0, gp_axislh) > .5 && stick_reset) || keyboard_check_pressed(vk_right)) && moved) {
	active_button++;
	stick_reset = false;
	move_right = true;
	moved = false;
} else if ((gamepad_button_check_pressed(0, gp_padl) || (gamepad_axis_value(0, gp_axislh) < -.5 && stick_reset) || keyboard_check_pressed(vk_left)) && moved) {
	active_button--;
	stick_reset = false;
	move_left = true;
	moved = false;
}

if (active_button > array_length_1d(buttons)) {
	active_button = 0;	
} else if (active_button < 0) {
	active_button = array_length_1d(buttons);	
}

if (gamepad_axis_value(0, gp_axislh) < .1 && gamepad_axis_value(0, gp_axislh) > -.1) stick_reset = true;

if (move_right) {
	current_angle = camera_get_view_angle(view_camera[0]);
	if (!angle_set) {
		goal_angle = current_angle + rotation_angle;
		angle_set = true;
	}
	if (current_angle < goal_angle) {
		camera_set_view_angle(view_camera[0], current_angle + 1);
	} else {
		angle_set = false;
		moved = true;
		move_right = false;	
	}
} else if (move_left) {
	current_angle = camera_get_view_angle(view_camera[0]);
	if (!angle_set) {
		goal_angle = current_angle - rotation_angle;
		angle_set = true;
	}
	if (current_angle > goal_angle) {
		camera_set_view_angle(view_camera[0], current_angle - 1);
	} else {
		angle_set = false;
		moved = true;
		move_left = false;	
	}
}

// handle button controls
switch (current_menu) {
    case menu.title_screen:
        if (gamepad_button_check_pressed(0, gp_face1) || keyboard_check_pressed(vk_enter)) {
		switch (active_button) {
		    case 1:
				current_menu = menu.world_select;
				initialize_buttons();
				break;
			case 2:
				room_goto(rm_options);
				break;
			case 3:
				game_end();
				break;
			}
		}
        break;
	case menu.world_select:
		if (gamepad_button_check_pressed(0, gp_face1) || keyboard_check_pressed(vk_enter)) {
			switch (active_button) {
			    case 1:
					current_menu = menu.mars_select;
					initialize_buttons();
					break;
				case 2:
					if (world_2_count > 0) {
						current_menu = menu.venus_select;
						initialize_buttons();
					}
					break;
				case 3:
					if (world_3_count > 0) {
						current_menu = menu.mercury_select;
						initialize_buttons();
					}
					break;
				case 4:
					if (world_4_count > 0) {
						current_menu = menu.jupiter_select;
						initialize_buttons();
					}
					break;
			}
		}
		if (gamepad_button_check_pressed(0, gp_face2) || keyboard_check_pressed(vk_escape)) {
			current_menu = menu.title_screen;
			initialize_buttons();
		}
		break;
	case menu.mars_select:
		if (gamepad_button_check_pressed(0, gp_face1) || keyboard_check_pressed(vk_enter)) {
			switch (active_button) {
			    case 1:
					room_goto(rm_In_Ship_One);
					break;
				case 2:
					room_goto(rm_In_Ship_Two);
					break;
				case 3:
					room_goto(rm_In_Ship_Three);
					break;
				case 4:
					room_goto(rm_Ship_Remains_One);
					break;
				case 5:
					room_goto(rm_Ship_Remains_Two);
					break;
				case 6:
					room_goto(rm_Ship_Remains_Three);
					break;
				case 7:
					room_goto(rm_Asteroids_One);
					break;
				case 8:
					room_goto(rm_Asteroids_Two);
					break;
				case 9:
					room_goto(rm_Asteroids_Three);
					break;
				case 10:
					room_goto(rm_Inside_Asteroid_One);
					break;
				case 11:
					room_goto(rm_Inside_Asteroid_Two);
					break;
				case 12:
					room_goto(rm_Duel_of_the_Fates);
					break;
			}
		}
		if (gamepad_button_check_pressed(0, gp_face2) || keyboard_check_pressed(vk_escape)) {
			current_menu = menu.world_select;
			initialize_buttons();
		}
		break;
	case menu.venus_select:
		if (gamepad_button_check_pressed(0, gp_face1) || keyboard_check_pressed(vk_enter)) {
			switch (active_button) {
			    case 1:
					room_goto(rm_Into_the_Garden);
					break;
				case 2:
					room_goto(rm_New_Trick);
					break;
				case 3:
					room_goto(rm_Pillars);
					break;
				case 4:
					room_goto(rm_Enter_Shtumps);
					break;
				case 5:
					room_goto(rm_Road_Less_Traveled);
					break;
				case 6:
					room_goto(rm_Enter_Rolleyes);
					break;
				case 7:
					room_goto(rm_Fortress);
					break;
				case 8:
					room_goto(rm_Uphill_Battle);
					break;
				case 9:
					room_goto(rm_Float);
					break;
				case 10:
					room_goto(rm_Jump_Jive_and_Wail);
					break;
			}
		}
		if (gamepad_button_check_pressed(0, gp_face2) || keyboard_check_pressed(vk_escape)) {
			current_menu = menu.world_select;
			initialize_buttons();
		}
		break;
	case menu.mercury_select:
		if (gamepad_button_check_pressed(0, gp_face1) || keyboard_check_pressed(vk_enter)) {
			switch (active_button) {
			    case 1:
					room_goto(rm_Cyberfunk);
					break;
				case 2:
					room_goto(rm_Leap_of_Faith);
					break;
				case 3:
					room_goto(rm_Introducing_Helilads);
					break;
				case 4:
					room_goto(rm_Slants);
					break;
				case 5:
					room_goto(rm_High_Flier);
					break;
				case 6:
					room_goto(rm_Drones);
					break;
				case 7:
					room_goto(rm_Switchup_One);
					break;
				case 8:
					room_goto(rm_Switchup_Two);
					break;
				case 9:
					room_goto(rm_Run);
					break;
				case 10:
					room_goto(rm_Angry_Helilad);
					break;
			}
		}
		if (gamepad_button_check_pressed(0, gp_face2) || keyboard_check_pressed(vk_escape)) {
			current_menu = menu.world_select;
			initialize_buttons();
		}
		break;
	case menu.jupiter_select:
		if (gamepad_button_check_pressed(0, gp_face1) || keyboard_check_pressed(vk_enter)) {
			switch (active_button) {
			    case 1:
					room_goto(rm_Not_a_Jolly_Castle);
					break;
				case 2:
					room_goto(rm_Saw_Ya_Later);
					break;
				case 3:
					room_goto(rm_Axe_You_a_Question);
					break;
				case 4:
					room_goto(rm_Dream_Crusher);
					break;
				case 5:
					room_goto(rm_Die_Lit);
					break;
				case 6:
					room_goto(rm_Triple_Threat);
					break;
				case 7:
					room_goto(rm_Paths);
					break;
				case 8:
					room_goto(rm_Die_Agonal);
					break;
				case 9:
					room_goto(rm_Amalgamation);
					break;
				case 10:
					room_goto(rm_Run_Two_Electric_Boogaloo);
					break;
				case 11:
					room_goto(rm_Final_Fight);
					break;
			}
		}
		if (gamepad_button_check_pressed(0, gp_face2) || keyboard_check_pressed(vk_escape)) {
			current_menu = menu.world_select;
			initialize_buttons();
		}
		break;
}


// animate button on select
if (active_button != 0) {
	if (growth < -2) {
		growing = true;	
	} else if (growth > 2) {
		growing = false;	
	}
	
	if (growing) {
		growth += .05;
	} else {
		growth -= .05;
	}	
	created_buttons[active_button - 1].x = xstart + lengthdir_x((sprite_width / 2) + 20 + growth, 90 - goal_angle);
	created_buttons[active_button - 1].y = ystart + lengthdir_y((sprite_width / 2) + 20 + growth, 90 - goal_angle);
}

