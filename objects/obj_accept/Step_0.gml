/// @description Insert description here
// You can write your code in this editor
if (active) {
	if (keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1)) {
		if (instance_exists(obj_fullscreen)) {
			if (obj_fullscreen.on) {
				window_set_fullscreen(true);
			} else {
				window_set_fullscreen(false);
			}
		}
		
		if (instance_exists(obj_resolution)) {
			width = 1920;
			height = 1080;
			switch (obj_resolution.resolution) {
			    case 0:
					width = 1024;
					height = 768;
			        break;
				case 1:
					width = 1280;
					height = 720;
			        break;
				case 2:
					width = 1366;
					height = 768;
			        break;
				case 3:
					width = 1400;
					height = 1050;
			        break;
				case 4:
					width = 1600;
					height = 900;
			        break;
				case 5:
					width = 1920;
					height = 1080;
			        break;
			}
			
			display_set_gui_size(width, height);
			window_set_size(width, height);
			
			base_width = 1920;
			base_height = 1080;
			
			aspect = base_width / base_height;
			
			if (width >= height) {
				adjusted_height = min(base_height, height);
				adjusted_width = adjusted_height * aspect;
			}
			
			surface_resize(application_surface, adjusted_width, adjusted_height);
		}
		room_goto(global.room_from);
	}
	
	if (y >= ystart + move_length) {
		move_up = true;	
	} else if (y <= ystart - move_length) {
		move_up = false;	
	}
	
	if (move_up) {
		y -= .1;	
	} else {
		y += .1;	
	}
	
} else {
	y = ystart;	
}

if (instance_exists(obj_options_controller)) {
	if (obj_options_controller.current_option == 2) {
		active = true;	
	} else {
		active = false;	
	}
}