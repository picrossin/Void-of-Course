/// @description Insert description here
// You can write your code in this editor
if (gamepad_axis_value(0, gp_axislv) < .1 && gamepad_axis_value(0, gp_axislv) > -.1) stick_reset = true;

if (keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd) || 
(gamepad_axis_value(0, gp_axislv) > .5 && stick_reset)) {
	stick_reset = false;
	if (current_option >= 2) {
		current_option = 0;	
	} else {
		current_option++;	
	}
} else if (keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu) ||
(gamepad_axis_value(0, gp_axislv) < -.5 && stick_reset)) {
	stick_reset = false;
	if (current_option <= 0) {
		current_option = 2;	
	} else {
		current_option--;	
	}
}