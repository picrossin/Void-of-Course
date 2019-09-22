/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_player)) {
	instance_create_depth(396, 288, -200, obj_boss_door);
	instance_create_depth(396, 272, -200, obj_boss_door);
	
	boss_intro = instance_create_depth(0, 0, 100, obj_dialog);
	boss_intro.text[0] = "Commander:\nAh, Moonlad. Ive been looking for you.";
	boss_intro.speaker_sprite[0] = spr_mars_boss;
	boss_intro.text[1] = "Commander:\nYour time is nigh. Theres no more \nlandings to fake.";
	boss_intro.speaker_sprite[1] = spr_mars_boss;	
	boss_intro.text[2] = "You:\nCurse you, Flat Earth Alliance \ncommander!";
	boss_intro.speaker_sprite[2] = obj_player.player_skin;
	boss_intro.text[3] = "You:\nI know youre hiding Mars somewhere.";
	boss_intro.speaker_sprite[3] = obj_player.player_skin;
	boss_intro.text[4] = "You:\nDie";
	boss_intro.speaker_sprite[4] = obj_player.player_skin;
	boss_intro.text[5] = "Commander:\nDie";
	boss_intro.speaker_sprite[5] = spr_mars_boss;
	instance_destroy();	
}