filename = "player_skins.sav";
if (file_exists(filename)) {
	var wrapper = load_json_from_file(filename);
	var list = wrapper[? "ROOT"];
	
	return list;
}
return ds_list_create();