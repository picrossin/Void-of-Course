/// @description Insert description here
// You can write your code in this editor
for (i = 0; i < 5; i++) {
	instance_create_depth(random_range(x + 20, x + sprite_width - 10), random_range(y + 10, y + 50), depth - 100, obj_cherry_leaf);	
}
alarm[0] = room_speed * 2;