/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)) {
	intro = instance_create_depth(0, 0, 100, obj_dialog);
	intro.text[0] = "You:\nThis castle sucks";
	intro.speaker_sprite[0] = obj_player.player_skin;
	intro.text[1] = "You:\nIt is dark and damp and dank";
	intro.speaker_sprite[1] = obj_player.player_skin;
	intro.text[2] = "You:\nThis better be worth it, Jupiter";
	intro.speaker_sprite[2] = obj_player.player_skin;
}