if (instance_exists(obj_player)) {
	intro = instance_create_depth(0, 0, 100, obj_dialog);
	intro.text[0] = "Dr Pancake:\nYou! Give me back the planets!";
	intro.speaker_sprite[0] = spr_final_boss_dialog;
	intro.text[1] = "You:\nNo";
	intro.speaker_sprite[1] = obj_player.player_skin;
	intro.text[2] = "Dr Pancake:\nPrepare to die";
	intro.speaker_sprite[2] = spr_final_boss_dialog;
	intro.text[3] = "Dr Pancake:\nRound one!";
	intro.speaker_sprite[3] = spr_final_boss_dialog;
	intro.text[4] = "You:\nYes?";
	intro.speaker_sprite[4] = obj_player.player_skin;
	intro.text[5] = "Dr Pancake:\nWhat? No, let us fight!";
	intro.speaker_sprite[5] = spr_final_boss_dialog;
	intro.text[6] = "Dr Pancake:\nBesides, you are supposed to be flat!";
	intro.speaker_sprite[6] = spr_final_boss_dialog;
	intro.text[7] = "Dr Pancake:\nBy the way meet my twin brother";
	intro.speaker_sprite[7] = spr_final_boss_dialog;
	intro.text[8] = "Dr Flapjack:\nYOOOOOOOOOOOO";
	intro.speaker_sprite[8] = spr_final_boss_dialog;
}