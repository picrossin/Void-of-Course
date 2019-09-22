clamp_x = true;

intro = instance_create_depth(0, 0, 100, obj_dialog);
intro.text[0] = "xxxx:\nSo you have finally arrived.";
intro.speaker_sprite[0] = spr_final_boss_dialog;
intro.text[1] = "xxxx:\nDie";
intro.speaker_sprite[1] =  spr_final_boss_dialog;
intro.text[2] = "You:\nNever SAW that one coming";
intro.speaker_sprite[2] = player_skin;