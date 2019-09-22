/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)) {
	intro = instance_create_depth(0, 0, 100, obj_dialog);
	intro.text[0] = "You:\nHnnnnnnnnng pretty colors...";
	intro.speaker_sprite[0] = obj_player.player_skin;
	intro.text[1] = "You:\nWish I could see them";
	intro.speaker_sprite[1] = obj_player.player_skin;
	intro.text[2] = "You:\nI do not have eyes";
	intro.speaker_sprite[2] = obj_player.player_skin;
	intro.text[3] = "You:\nAh well. Here I come Mercury!";
	intro.speaker_sprite[3] = obj_player.player_skin;
}