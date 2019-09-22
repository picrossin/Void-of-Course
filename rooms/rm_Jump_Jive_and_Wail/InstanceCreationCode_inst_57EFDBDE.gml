if (instance_exists(obj_player)) {
	intro = instance_create_depth(0, 0, 100, obj_dialog);
	intro.text[0] = "Rolleye Master:\nEyewitness a non-believer.";
	intro.speaker_sprite[0] = spr_venus_boss_dialog;
	intro.text[1] = "Rolleye Master:\nEye assume you seek Venus.";
	intro.speaker_sprite[1] = spr_venus_boss_dialog;
	intro.text[2] = "You:\nI do. Do not make me kill you for her.";
	intro.speaker_sprite[2] = obj_player.player_skin;
	intro.text[3] = "Rolleye Master:\nEye doubt you will lay a \nscratch on meyeself.";
	intro.speaker_sprite[3] = spr_venus_boss_dialog;
}