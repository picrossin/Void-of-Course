/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_player) && !initialized_text) {
	mercury = instance_create_depth(0, 0, 100, obj_dialog);
	mercury.speaker_sprite_size = 10;
	mercury.speaker_grow_size = 10;
	mercury.text[0] = "Mercury:\nHi hi hi hi hi";
	mercury.speaker_sprite[0] = spr_save_mercury_dialog;
	mercury.text[1] = "You:\nHey? Listen we need to leave";
	mercury.speaker_sprite[1] = obj_player.player_skin;
	mercury.text[2] = "Mercury:\nCool I am Mercury what is up";
	mercury.speaker_sprite[2] = spr_save_mercury_dialog; 
	mercury.text[3] = "You:\nOk dude let us go we need to fight the \nfinal boss";
	mercury.speaker_sprite[3] = obj_player.player_skin;
	mercury.text[4] = "Mercury:\nOk fine but like";
	mercury.speaker_sprite[4] = spr_save_mercury_dialog;
	mercury.text[5] = "You rescued Mercury!";
	mercury.speaker_sprite[5] = spr_no_speaker;
	instance_create_depth(x + 16, y - 100, depth, obj_exit);
	initialized_text = true;
	
	if (instance_exists(obj_skins_loader)) {
		current_skins = obj_skins_loader.player_skins;
		if (ds_list_find_index(current_skins, spr_mercury) == -1) {
			ds_list_add(current_skins, spr_mercury);
			save_skins(current_skins);
		}
	}
}