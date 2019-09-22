/// @desc shoot() Shoots a bullet

if (instance_exists(obj_player)) {
	with (obj_player) {
		var shoot_sound = audio_play_sound(snd_shoot, 10, false);
		audio_sound_pitch(shoot_sound, random_range(.8, 1.2));
		shot = true;
		bullet = instance_create_depth(x + lengthdir_x(16, launch_direction), y + lengthdir_y(16, launch_direction), depth + 1, obj_bullet);
		bullet.image_angle = launch_direction;
	}
}