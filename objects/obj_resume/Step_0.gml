/// @description Insert description here
// You can write your code in this editor
if (active) {
	if (keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1)) {
		global.pause = false;
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

if (instance_exists(obj_pause_controller)) {
	if (obj_pause_controller.current_option == 0) {
		active = true;	
	} else {
		active = false;	
	}
}