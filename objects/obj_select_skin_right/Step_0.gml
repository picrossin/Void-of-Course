/// @description Insert description here
// You can write your code in this editor
if ((mouse_check_button_pressed(mb_left) && 
mouse_x == clamp(mouse_x, bbox_left, bbox_right) && mouse_y == clamp(mouse_y, bbox_top, bbox_bottom)) || 
gamepad_button_check_pressed(0, gp_shoulderr)) {
	with (obj_skin_selecter) {
		if (instance_exists(obj_skins_loader)) {
			length = ds_list_size(obj_skins_loader.player_skins);
			index = ds_list_find_index(obj_skins_loader.player_skins, sprite_index);
			if (index == length - 1) {
				obj_skins_loader.current = ds_list_find_value(obj_skins_loader.player_skins, 0);
			} else {
				obj_skins_loader.current = ds_list_find_value(obj_skins_loader.player_skins, index + 1);
			}
		}
	}
}