/// @description Insert description here
// You can write your code in this editor
text = "Resolution < " + resolution_string + " >";

if (active) {
	if (keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0, gp_padr)) {
		if (resolution >= 5) {
			resolution = 0;	
		} else {
			resolution++;	
		}
	} else if (keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0, gp_padl)) {
		if (resolution <= 0) {
			resolution = 5;	
		} else {
			resolution--;	
		}
	}
	
	switch (resolution) {
	    case 0:
	        resolution_string = "1024 x 768";
	        break;
		case 1:
	        resolution_string = "1280 x 720";
	        break;
		case 2:
	        resolution_string = "1366 x 768";
	        break;
		case 3:
	        resolution_string = "1400 x 1050";
	        break;
		case 4:
	        resolution_string = "1600 x 900";
	        break;
		case 5:
	        resolution_string = "1920 x 1080";
	        break;
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
	if (obj_options_controller.current_option == 1) {
		active = true;	
	} else {
		active = false;	
	}
}