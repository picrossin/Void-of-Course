/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_camera)) {
	x = ((obj_camera.x - obj_camera.half_cam_width) * scroll_speed) + xstart;
	y = ((obj_camera.y - obj_camera.cam_height) * .9) + ystart;
}

if (!instance_exists(obj_building_initializer)) {
	instance_create_depth(x, y, depth, obj_building_initializer);	
}