/// @description Insert description here
// You can write your code in this editor
if (image_index == 25) instance_destroy();
if (instance_exists(obj_camera)) {
	x = (((obj_camera.x - obj_camera.half_cam_width) * scroll_speed) + xstart);
	y = (((obj_camera.y - obj_camera.half_cam_height) * scroll_speed) + ystart);
}