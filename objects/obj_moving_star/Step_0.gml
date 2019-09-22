/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_camera)) {
	x = (((obj_camera.x - obj_camera.half_cam_width) * scroll_speed) + xstart + displacement);
	y = (((obj_camera.y - obj_camera.half_cam_height) * scroll_speed) + ystart);
	displacement -= displacement_step;
}

if (x < -500) instance_destroy();
