/// @description Insert description here
// You can write your code in this editor
x += lengthdir_x(move_speed, direction_of_travel);
y += lengthdir_y(move_speed, direction_of_travel);

if (!instance_position(x + lengthdir_x(corner_collision_length, direction_of_travel - 135), y + lengthdir_y(corner_collision_length, direction_of_travel - 135), obj_wall) && !disable_outer_turning) {
	disable_outer_turning = true;
	alarm[0] = 30;
	if (move_right) 
		direction_of_travel -= 90;
	else
		direction_of_travel += 90;
} else if (instance_position(x + lengthdir_x(collision_length, direction_of_travel), y + lengthdir_y(collision_length, direction_of_travel), obj_wall)) {
	if (move_right) 
		direction_of_travel += 90;
	else
		direction_of_travel -= 90;
}
