/// @desc save_skins(skins)
/// @arg Skins list of the skins the player has

var root_list = argument0;
var wrapper = ds_map_create();
ds_map_add_list(wrapper, "ROOT", root_list);

var json_string = json_encode(wrapper);
save_string_to_file("player_skins.sav", json_string);

ds_map_destroy(wrapper);