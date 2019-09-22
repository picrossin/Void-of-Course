if (instance_exists(obj_player)) {
	intro = instance_create_depth(0, 0, 100, obj_dialog);
	intro.text[0] = "toop:\nBeep boop bich";
	intro.speaker_sprite[0] = spr_mercury_boss_dialog;
	intro.text[1] = "You:\nShut up I just killed like twenty of you";
	intro.speaker_sprite[1] = obj_player.player_skin;
	intro.text[2] = "toop:\nGood one";
	intro.speaker_sprite[2] = spr_mercury_boss_dialog;
}