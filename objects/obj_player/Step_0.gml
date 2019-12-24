/// @description Update code

// Check for controller 
if (gamepad_is_connected(0)) {
	using_controller = true;
} else {
	using_controller = false;	
}

// If the game is paused, don't execute the step event
if (global.pause) {
	exit;	
}

// Skip room (for debugging)
if (keyboard_check_pressed(ord("P"))) {
	room_goto_next();
} else if (keyboard_check_pressed(ord("O"))) {
	room_goto_previous();
}

if (using_controller) {
	// Get direction of thumbstick
	if (gamepad_axis_value(0, gp_axislh) != 0 && gamepad_axis_value(0, gp_axislv) != 0) {
		launch_direction = point_direction(0, 0, gamepad_axis_value(0, gp_axislh), gamepad_axis_value(0, gp_axislv));
	}
} else {
	// Get direction of mouse
	launch_direction = point_direction(x, y, mouse_x, mouse_y);
}

if (instance_exists(obj_progress_loader)) {
	if (ds_list_size(obj_progress_loader.world_2) > 0) {
		has_gun = true;	
	}
}

// Shooting code
if (has_gun) {
	if ((gamepad_button_check(0, gp_shoulderrb) || mouse_check_button(mb_right)) && !shot) {
		shoot();
		alarm[1] = shoot_offset;
		shot = true;
	}
}

if (!dead) {
	var no_collisions = true;

	for (i = 0; i < 360; i += 30) {
		// Check for collisions with rechargable physics objects
		if (physics_test_overlap(x + lengthdir_x(2, i), y + lengthdir_y(2, i), 0, obj_collision_with_recharge)) {
			no_collisions = false;
			if (!reload_delay_started && !reloaded) {
				screen_shake((phy_speed / 6) * 2, 8);
				// reloads launch
				reload_delay_started = true;
				alarm[0] = 10;
			}
			if (hit_play) {
				var smoke = instance_create_depth(x + lengthdir_x(8, i), y + lengthdir_y(8, i), depth - 1, obj_land_smoke);
				smoke.image_angle = image_angle;
				var hit_sound = audio_play_sound(snd_hit_wall, 5, false);
				audio_sound_pitch(hit_sound, random_range(.8, 1.2));
				audio_sound_gain(hit_sound, phy_speed/4, 0);
				hit_play = false;
			}
			break;
		}
	}

	hit_play = no_collisions;
}

// Check if player can be launched and launch them if so
if (!launched) {
	// Check if player can be launched and launch them if they can
	if (using_controller) {
		if (reloaded && gamepad_button_check_pressed(0, gp_face1)) {
			launched = true;
		}
	} else {
		mouse_in_bounds = point_in_rectangle(mouse_x, mouse_y, 0, 0, room_width, room_height);
		mouse_clicked = mouse_check_button_pressed(mb_left);
		if (!beat_level && mouse_in_bounds && mouse_clicked && reloaded) {
			launched = true;
		}
	}
} else {
	if (reloaded) {
		launch_player();
	}
}

// Explode player if ability is active
if (explode) {
	explode_ability();
}

// apply gravity if player is in space
if (in_space) {
	phy_speed_y += grav;
}

if (collision_circle(x, y, 8, obj_obstacle, true, true)) {
	dead = true;
}

if (clamp_x) {
	phy_position_x = clamp(phy_position_x, 8, room_width - 8);
}

if (using_controller) {
	if (gamepad_button_check_pressed(0, gp_face4)) dead = true;
}
else {
	if (keyboard_check_pressed(ord("R"))) dead = true;
}

if (y > room_height) {
	dead = true;	
}

// death
if (dead && !beat_level) {
	if (!audio_is_playing(snd_death)) audio_play_sound(snd_death, 10, false);
	if (!audio_is_playing(snd_explode)) audio_play_sound(snd_explode, 2, false);
	instance_create_depth(x, y, 0, obj_death_particle_generator);
	instance_destroy(obj_crosshair);
	instance_destroy();
}

if (collision_circle(x, y, 8, obj_exit, true, true)) {
	dead = true;
	beat_level = true;
	if (!level_beat_sound_played) audio_play_sound(snd_door_close, 10, false);
	level_beat_sound_played = true;
}

// update light
if (instance_exists(player_light)) {
	player_light.x = x;
	player_light.y = y;
}