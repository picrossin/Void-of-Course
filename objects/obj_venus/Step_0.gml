/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_player) && !initialized_text) {
	venus = instance_create_depth(0, 0, 100, obj_dialog);
	venus.speaker_sprite_size = 10;
	venus.speaker_grow_size = 10;
	venus.text[0] = "Venus:\nheyyyyyyyyyyyy uWu";
	venus.speaker_sprite[0] = spr_save_venus_dialog;
	venus.text[1] = "You:\nVenus! Good to see you. Glad you are safe!";
	venus.speaker_sprite[1] = obj_player.player_skin;
	venus.text[2] = "Venus:\nhaha yeah, anyway wanna see my mantle?";
	venus.speaker_sprite[2] = spr_save_venus_dialog; 
	venus.text[3] = "You:\n(Blushes) V..Venus..There is work to be done!";
	venus.speaker_sprite[3] = obj_player.player_skin;
	venus.text[4] = "Venus:\nughhhhhh okayyyyyyyyy";
	venus.speaker_sprite[4] = spr_save_venus_dialog;
	venus.text[5] = "You rescued Venus!";
	venus.speaker_sprite[5] = spr_no_speaker;
	instance_create_depth(x + 16, y - 100, depth, obj_exit);
	initialized_text = true;
	
	if (instance_exists(obj_skins_loader)) {
		current_skins = obj_skins_loader.player_skins;
		if (ds_list_find_index(current_skins, spr_venus) == -1) {
			ds_list_add(current_skins, spr_venus);
			save_skins(current_skins);
		}
	}
}