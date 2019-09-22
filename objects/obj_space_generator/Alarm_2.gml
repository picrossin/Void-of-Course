/// @description moving stars
for (i = 0; i < 700; ++i) {
	instance_create_depth(random_range(room_width, room_width * 3), random_range(0, room_height), depth, obj_moving_star);	
}
alarm[2] = room_speed * 5;