/// @description Insert description here
// You can write your code in this editor
image_angle += .5;
if (collision_circle(x, y, sprite_width / 2, obj_player, false, true)) {
	obj_player.has_gun = true;
	boss_intro = instance_create_depth(0, 0, 100, obj_dialog);
	boss_intro.text[0] = "You:\nWow, a powerful gun!";
	boss_intro.speaker_sprite[0] = obj_player.player_skin;
	boss_intro.text[1] = "You:\nI cant wait to hold RT or right mouse to shoot it!";
	boss_intro.speaker_sprite[1] = obj_player.player_skin;
	instance_destroy();	
}