/// @description Insert description here
// You can write your code in this editor
if (gamepad_button_check_pressed(0, gp_start) || keyboard_check_pressed(vk_escape)) {
	if (global.pause) {
		global.pause = false;	
		options_enabled = false;
	} else {
		global.pause = true;
		options_enabled = true;
	}
}
if (global.pause) {
	physics_pause_enable(true);
} else {
	physics_pause_enable(false);	
	options_enabled = false;
}