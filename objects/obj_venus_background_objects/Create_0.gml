/// @description Insert description here
// You can write your code in this editor
randomize();
sparkles = true;
alarm[0] = random_range(5, 15);
for (i = 0; i < 50; i++) {
	instance_create_depth(random_range(0, room_width), random_range(0, room_height - 200), depth, obj_clouds);	
}

