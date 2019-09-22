/// @description Insert description here
// You can write your code in this editor
global.pause = true;
draw_set_color(make_color_rgb(20, 20, 20));
draw_rectangle(0, height, width, height - box_height, false);
switch (current_state) {
	case state.grow:
		if (box_height < 200) {
			box_height *= move_speed;
		} else {
			current_state = state.diplay_text;	
		}
		break;
	case state.diplay_text:
		if (!text_initialized) {
			current_text = instance_create_depth(sprite_get_width(speaker_sprite[current_line]) * speaker_sprite_size + 80, height - 150, depth - 1, obj_main_font);
			text_initialized = true;
		}
		if (current_line < array_length_1d(text)) {
			old_length = string_length(current_text.text);
			string_index += .5;
			printed_text = string_copy(text[current_line], 1, string_index);
			current_text.text = printed_text;
			new_length = string_length(current_text.text);
			
			if (old_length != new_length) {
				if (talk_on) {
					var talk_sound = audio_play_sound(snd_moon_talk, 5, false);
					audio_sound_pitch(talk_sound, random_range(.8, 1.2));
					talk_on = false;
				} else {
					talk_on = true;	
				}
			} 
			
			if (speaker_grow_size >= speaker_sprite_size + 1) {
				speaker_sprite_grow = false;
			} else if (speaker_grow_size <= speaker_sprite_size - 1) {
				speaker_sprite_grow = true;	
			}
			if (speaker_sprite_grow) {
				speaker_grow_size += .01;
			} else {
				speaker_grow_size -= .01;	
			}
			draw_sprite_ext(speaker_sprite[current_line], 0, ((sprite_get_width(speaker_sprite[current_line]) * speaker_grow_size) / 2) + 20, height - ((sprite_get_height(speaker_sprite[current_line]) * speaker_grow_size) / 2) - 20, 
			speaker_grow_size, speaker_grow_size, 0, c_white, 1);
			if (mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0, gp_face1)) {
					string_index = 0;
					current_line++;
			}
		} else {
			instance_destroy(current_text);
			current_state = state.shrink;	
		}
		break;
	case state.shrink:
		if (box_height > 0) {
			box_height *= 2 - move_speed;
		} else {
			global.pause = false;
			instance_destroy();
		}
		break;
}
