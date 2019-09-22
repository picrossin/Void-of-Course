/// @description Insert description here
// You can write your code in this editor
intro = instance_create_depth(0, 0, 100, obj_dialog);
intro.text[0] = "You:\nUgh...where am I?";
intro.speaker_sprite[0] = obj_player.player_skin;
intro.text[1] = "You:\nDidnt even get to finish last nights shift...";
intro.speaker_sprite[1] = obj_player.player_skin;
intro.text[2] = "You:\nI need to get out of here and save\nthe others!";
intro.speaker_sprite[2] = obj_player.player_skin;
intro.text[3] = "You:\nGuess Ill just have to press A or left \nclick while";
intro.speaker_sprite[3] = obj_player.player_skin;
intro.text[4] = "You:\naiming with the mouse or left stick to \nlaunch myself...";
intro.speaker_sprite[4] = obj_player.player_skin;