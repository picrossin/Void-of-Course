/// @description Insert description here
// You can write your code in this editor
if (gamepad_button_check(0, gp_shoulderrb) || mouse_check_button(mb_right)) {
	shoot();
	alarm[1] = shoot_offset;
} else {
	shot = false;	
}