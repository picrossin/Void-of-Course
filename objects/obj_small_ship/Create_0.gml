/// @description Insert description here
// You can write your code in this editor
image_index = irandom_range(0, sprite_get_number(sprite_index));
hsp = random_range(3, 6.5);
enum flight_direction {
	left, right 
}
scale = random_range(.4, 1);
image_xscale = scale;
image_yscale = scale;
dir = flight_direction.left;
random_dir = irandom_range(0, 1);
if (random_dir = 0) {
	dir = flight_direction.right;
}
if (dir == flight_direction.left) {
	hsp *= -1;
	x = room_width + sprite_width;
	y = random_range(0, room_height);
} else {
	image_xscale *= -1;	
	x = 0 - sprite_width;
	y = random_range(0, room_height);
}