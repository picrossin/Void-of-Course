/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_lighting)) {
	draw_x = x - obj_lighting.x;
	draw_y = y - obj_lighting.y;
	gpu_set_blendmode(bm_subtract);
	surface_set_target(light);
	draw_ellipse_color(draw_x - (x_size / 2), draw_y - (y_size / 2), draw_x + (x_size / 2), draw_y + (y_size / 2), color, c_black, false);
	surface_reset_target();
	gpu_set_blendmode(bm_normal);
}