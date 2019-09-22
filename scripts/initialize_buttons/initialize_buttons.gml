/// @desc initialize_buttons() Reinitializes the buttons of the main menu

if (instance_exists(obj_menu_earth)) {
	with (obj_menu_earth) {
		rotation_angle = 0;
		current_angle = 0;
		goal_angle = 0;
		move_right = false;
		move_left = false;
		moved = true;
		angle_set = false;
		stick_reset = true;
		active_button = 0;
		
		if (instance_exists(obj_progress_loader)) {
			world_1_count = ds_list_size(obj_progress_loader.world_1);
			world_2_count = ds_list_size(obj_progress_loader.world_2);
			world_3_count = ds_list_size(obj_progress_loader.world_3);
			world_4_count = ds_list_size(obj_progress_loader.world_4);
		}
		
		camera_set_view_angle(view_camera[0], 0);
		switch (obj_menu_earth.current_menu) {
			case menu.title_screen:
				buttons = 0;
			    buttons[0] = "Play";
				buttons[1] = "Options";
				buttons[2] = "Quit";
			    break;
			case menu.world_select:
				buttons = 0;
				buttons[0] = "Mars";
				buttons[1] = "";
				buttons[2] = "";
				buttons[3] = "";
				if (world_2_count > 0) {
					buttons[1] = "Venus";	
				}
				if (world_3_count > 0) {
					buttons[2] = "Mercury";	
				}
				if (world_4_count > 0) {
					buttons[3] = "Jupiter";	
				}
			    break;
			case menu.mars_select:
				buttons = 0;
				buttons[0] = "1";
				for (i = 1; i < world_1_count; i++) {
					buttons[i] = string(i + 1);
				}
			    break;
			case menu.venus_select:
				buttons = 0;
				for (i = 0; i < world_2_count; i++) {
					buttons[i] = string(i + 1);
				}
			    break;
			case menu.mercury_select:
				buttons = 0;
				for (i = 0; i < world_3_count; i++) {
					buttons[i] = string(i + 1);
				}
			    break;
			case menu.jupiter_select:
				buttons = 0;
				for (i = 0; i < world_4_count; i++) {
					buttons[i] = string(i + 1);
				}
			    break;
		}
		
		rotation_angle = round(360 / (array_length_1d(buttons) + 1));
		if (instance_exists(obj_button)) {
			with (obj_button) {
				instance_destroy();	
			}
		}
		buttons_initialized = true;	
		button_angle = 90 - rotation_angle;
		for (i = 0; i < array_length_1d(buttons); i++) {
			button_x = lengthdir_x((sprite_width / 2) + 20, button_angle);
			button_y = lengthdir_y((sprite_width / 2) + 20, button_angle);
			button = instance_create_depth(x + button_x, y + button_y, depth, obj_button);
			created_buttons[i] = button;
			button.image_angle = button_angle - 90;
			button.text = buttons[i];
			button_angle -= rotation_angle;
		}
	}
}