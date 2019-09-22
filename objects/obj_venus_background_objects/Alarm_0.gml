/// @description Insert description here
// You can write your code in this editor
if (sparkles) {
	for (i = 0; i < random_range(10, 50); i++) {
		instance_create_depth(random_range(0, room_width), random_range(room_height - 15, room_height), -1000, obj_water_sparkle);	
	}
	alarm[0] = random_range(15, 30);
}