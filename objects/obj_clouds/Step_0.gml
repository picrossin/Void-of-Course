/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_camera)) {
	x = (obj_camera.x - camera_get_view_width(view_camera[0]) / 2) * scroll_speed + xstart;
	y = (obj_camera.y - camera_get_view_height(view_camera[0]) * 2) * scroll_speed + ystart;
}