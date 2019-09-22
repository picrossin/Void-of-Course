/// @description Insert description here
// You can write your code in this editor
for (i = 0; i < 700; ++i) {
	instance_create_depth(random_range(-room_width / 2, room_width * 1.5), random_range(-room_height / 2, 1.5 * room_height), 50, obj_menu_star);	
}

alarm[0] = random_range(0, 3) * room_speed;