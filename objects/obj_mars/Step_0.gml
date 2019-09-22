/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_player) && !initialized_text) {
	mars = instance_create_depth(0, 0, 100, obj_dialog);
	mars.speaker_sprite_size = 10;
	mars.speaker_grow_size = 10;
	mars.text[0] = "Mars:\nSup";
	mars.speaker_sprite[0] = spr_mars_dialog;
	mars.text[1] = "You:\nThank goodness you are alive, Mars!";
	mars.speaker_sprite[1] = obj_player.player_skin;
	mars.text[2] = "Mars:\nYea";
	mars.speaker_sprite[2] = spr_mars_dialog; 
	mars.text[3] = "You:\nLets get you out of here. \nWe need your";
	mars.speaker_sprite[3] = obj_player.player_skin;
	mars.text[4] = "You:\nincredible blasting power to \nrescue Venus!";
	mars.speaker_sprite[4] = obj_player.player_skin;
	mars.text[5] = "Mars:\nOK";
	mars.speaker_sprite[5] = spr_mars_dialog;
	mars.text[6] = "You rescued Mars!";
	mars.speaker_sprite[6] = spr_no_speaker;
	instance_create_depth(x + 50, y, depth, obj_exit);
	initialized_text = true;
	
	if (instance_exists(obj_skins_loader)) {
		current_skins = obj_skins_loader.player_skins;
		if (ds_list_find_index(current_skins, spr_mars) == -1) {
			ds_list_add(current_skins, spr_mars);
			save_skins(current_skins);
		}
	}
}

if (instance_exists(obj_dialog)) {
	if (!sound_played && obj_dialog.current_line == 6) {
		audio_play_sound(snd_level_complete, 8, false);
		sound_played = true;
	}
}