/// @description Insert description here
// You can write your code in this editor
image_angle += 2;
if (instance_exists(obj_player)) {
	distance = point_distance(x, y, obj_player.x, obj_player.y);
	if (distance < open_radius) {
		if (!sound_played) {
			audio_play_sound(snd_door_open, 2, false);
			sound_played = true;
		}
		scale = default_scale + (1 * (1 - (distance / open_radius)));
		image_xscale = scale;
		image_yscale = scale;
	} else {
		sound_played = false;
		image_xscale = default_scale;
		image_yscale = default_scale;	
	}
}