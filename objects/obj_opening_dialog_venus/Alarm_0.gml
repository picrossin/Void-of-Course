/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)) {
	intro = instance_create_depth(0, 0, 100, obj_dialog);
	intro.text[0] = "You:\nIt is a little froggy here.";
	intro.speaker_sprite[0] = obj_player.player_skin;
	intro.text[1] = "You:\nI am also feeling a little heavier...";
	intro.speaker_sprite[1] = obj_player.player_skin;
	intro.text[2] = "You:\nAh well. I hope I can find Venus! She so pretty";
	intro.speaker_sprite[2] = obj_player.player_skin;
}