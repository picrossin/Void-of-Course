/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_menu_earth)) {
	if (obj_menu_earth.current_menu = menu.world_select) {
		image_alpha = 1;	
		if (obj_menu_earth.active_button == associated_button) {
			image_speed = 1;	
		} else {
			image_speed = 0;
		}
	} else {
		image_alpha = 0;	
	}
}