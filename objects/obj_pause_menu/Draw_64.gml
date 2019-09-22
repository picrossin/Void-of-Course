/// @description Insert description here
// You can write your code in this editor
if (global.pause && options_enabled) {
	draw_set_alpha(.5);
	draw_rectangle_color(0, 0, width, height, c_black, c_black, c_black, c_black, c_black);	
	draw_set_alpha(1);
	
	if (!pause_buttons_initialized) {
		controller = instance_create_depth(0, 0, depth - 1, obj_pause_controller);
		resume = instance_create_depth(width / 2, (height / 2) - 100, depth - 1, obj_resume);
		quit = instance_create_depth(width / 2, (height / 2) - 50, depth - 1, obj_quit);
		options = instance_create_depth(width / 2, height / 2, depth - 1, obj_options_pause);
		pause_buttons_initialized = true;
	}
} else {
	if (pause_buttons_initialized) {
		instance_destroy(controller);
		instance_destroy(resume);
		instance_destroy(quit);
		instance_destroy(options);
		pause_buttons_initialized = false;
	}
}