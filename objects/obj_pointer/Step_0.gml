if (instance_exists(obj_player)) {
	image_alpha = !obj_player.using_controller;
	x = mouse_x;
	y = mouse_y;
	image_angle += 1;
}