/// @description Insert description here
// You can write your code in this editor
if (active) {
	if (keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1)) {
		if (file_exists("progress.sav")) {
			file_delete("progress.sav");
		}
		if (file_exists("player_skins.sav")) {
			file_delete("player_skins.sav");
		}
		if (instance_exists(obj_progress_loader)) {
			obj_progress_loader.world_1 = ds_list_create();
			obj_progress_loader.world_2 = ds_list_create();
			obj_progress_loader.world_3 = ds_list_create();
			obj_progress_loader.world_4 = ds_list_create();	
		}
		room_goto_previous();
	}
	
	if (y >= ystart + move_length) {
		move_up = true;	
	} else if (y <= ystart - move_length) {
		move_up = false;	
	}
	
	if (move_up) {
		y -= .1;	
	} else {
		y += .1;	
	}
	
} else {
	y = ystart;	
}

if (instance_exists(obj_options_controller)) {
	if (obj_options_controller.current_option == 4) {
		active = true;	
	} else {
		active = false;	
	}
}