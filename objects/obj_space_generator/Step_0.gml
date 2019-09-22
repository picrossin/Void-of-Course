/// @description Insert description here
// You can write your code in this editor
if (moving_stars) {
	stars_created = true;
	moving_stars = false;
	for (i = 0; i < 700; ++i) {
		instance_create_depth(random_range(0, room_width), random_range(0, room_height), depth, obj_moving_star);	
	}
	alarm[2] = 1;
} else {
	if (!stars_created) {
		stars_created = true;
		for (i = 0; i < 700; ++i) {
			instance_create_depth(random_range(0, room_width), random_range(0, room_height), depth, obj_star);	
		}
	}
}