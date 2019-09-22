/// @description Insert description here
// You can write your code in this editor
move_right = true;
direction_of_travel = 0;

move_speed = 1;

collision_length = (sprite_width / 2) + 1;
corner_collision_length = point_distance(x, y, x + collision_length, y + collision_length);
disable_outer_turning = false;