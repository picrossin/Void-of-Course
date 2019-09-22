/// @description Insert description here
// You can write your code in this editor
if (dir == flight_direction.left) {
	instance_create_depth(x + (26 * scale), y + (9 * scale), depth + 1, obj_ship_trail);
} else {
	instance_create_depth(x - (26 * scale), y + (9 * scale), depth + 1, obj_ship_trail);
}
x += hsp;
if (x < -600 || x > room_width + 600) {
	instance_destroy();
}