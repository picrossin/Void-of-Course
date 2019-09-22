/// @description Insert description here
// You can write your code in this editor
screen_shake(4, 30);
if (instance_number(obj_final_boss) <= 1) {
	instance_create_depth(x, y, depth, obj_exit);
}