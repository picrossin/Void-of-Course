/// @description Draw level transitions

if (!began_level) {
	draw_set_color(c_black);
	draw_rectangle(transition_x, 0, width, height, false);
	if (!created_level_text) {
		level_text = instance_create_depth((width / 2), height / 2, depth - 1, obj_main_font);
		level_text.image_alpha = 0;
		current_room_name = string_replace_all(room_get_name(room), "_", " ");
		current_room_name = string_replace_all(current_room_name, "rm ", "");
		level_text.text = current_room_name;
		level_text.x -= (string_width(level_text.text) * 5) / 2;
		created_level_text = true;
	}
	if (level_text.image_alpha >= 1) {
		text_alpha_grow = false;	
	}
	if (text_alpha_grow) {
		level_text.image_alpha += .03;
	} else {
		level_text.image_alpha -= .03;
	}
	transition_x *= 1.1;
	if (transition_x >= width) {
		instance_destroy(level_text);
		transition_x = 1;
		began_level = true;
	}
}
if (beat_level && began_level) {
	instance_destroy(obj_crosshair);
	instance_destroy(player_light);
	draw_set_color(c_black);
	draw_rectangle(width - transition_x, 0, width, height, false);
	transition_x *= 1.1;
	if (transition_x >= width) {
		if (room == rm_Save_Mars || room == rm_Save_Jupiter || room == rm_Save_Mercury || room == rm_Save_Venus) {
			room_goto(rm_title_screen);
		} else {
			room_goto_next();
		}
	}
}
