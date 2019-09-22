/// @description Insert description here
// You can write your code in this editor
if (room == rm_title_screen) {
	player_skins = load_skins();
	if (ds_list_size(player_skins) == 0) {
		ds_list_add(player_skins, spr_moon);
	}
	current = ds_list_find_value(player_skins, 0);	
}