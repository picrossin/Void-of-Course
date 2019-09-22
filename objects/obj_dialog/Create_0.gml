/// @description Insert description here
// You can write your code in this editor
enum state {
	grow,
	diplay_text,
	shrink
}
current_state = state.grow;

width = display_get_gui_width();
height = display_get_gui_height();
box_height = 1;
move_speed = 1.5;
speaker_sprite[0] = spr_moon;
speaker_sprite_size = 20;
speaker_grow_size = speaker_sprite_size;
speaker_sprite_grow = true;
text[0] = ""
string_index = 1;
text_initialized = false;
current_line = 0;
current_sprite = speaker_sprite[0];
old_length = 0;
new_length = 0;
talk_on = false;