/// @description shooting stars
for (i = 0; i < 3; ++i) {
	instance_create_depth(random_range(0, room_width), random_range(0, room_height), depth, obj_shooting_star);	
}	
alarm[0] = random_range(0, 3) * room_speed;