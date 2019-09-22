/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_player) && !initialized_text) {
	jupiter = instance_create_depth(0, 0, 100, obj_dialog);
	jupiter.speaker_sprite_size = 10;
	jupiter.speaker_grow_size = 10;
	jupiter.text[0] = "Jupiter:\nGood golly! Thank golly you are here!";
	jupiter.speaker_sprite[0] = spr_save_jupiter_dialog;
	jupiter.text[1] = "You:\nIt was nothing. Wait, where are the\n other planets?";
	jupiter.speaker_sprite[1] = obj_player.player_skin;
	jupiter.text[2] = "Jupiter:\nNo idea! Guess we will have to wait\n and see!";
	jupiter.speaker_sprite[2] = spr_save_jupiter_dialog; 
	jupiter.text[3] = "Jupiter:\nGolly, look at the time. Let \nus grow back";
	jupiter.speaker_sprite[3] = spr_save_jupiter_dialog; 
	jupiter.text[4] = "Jupiter:\nto size so I can continute spinning\n for eternity";
	jupiter.speaker_sprite[4] = spr_save_jupiter_dialog;
	jupiter.text[5] = "You:\nYeah alright";
	jupiter.speaker_sprite[5] = obj_player.player_skin;
	jupiter.text[6] = "You rescued Jupiter!";
	jupiter.speaker_sprite[6] = spr_no_speaker;
	instance_create_depth(x + 300, y + 32, depth, obj_exit);
	initialized_text = true;
	
	if (instance_exists(obj_skins_loader)) {
		current_skins = obj_skins_loader.player_skins;
		if (ds_list_find_index(current_skins, spr_jupiter) == -1) {
			ds_list_add(current_skins, spr_jupiter);
			save_skins(current_skins);
		}
	}
}