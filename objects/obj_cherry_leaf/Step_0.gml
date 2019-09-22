/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_camera)) {
	x = xstart + displacement;
	y = ystart - displacement;
	displacement -= displacement_step;
}

if (x < -500) instance_destroy();
if (y > room_height + 500) instance_destroy();

image_angle += rotate_speed;
