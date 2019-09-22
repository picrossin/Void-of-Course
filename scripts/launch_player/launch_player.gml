/// @desc launch_player() Launches the player in the direction of their input

if (instance_exists(obj_player)) {
	with (obj_player) {
		launched = false;
		reloaded = false;
		explode = true;
		var launch_sound = audio_play_sound(snd_launch, 10, false);
		audio_sound_pitch(launch_sound, random_range(.8, 1.2));
		phy_speed_x = (phy_speed_x * .25) + lengthdir_x(launch_amount, launch_direction);
		phy_speed_y = (phy_speed_y * .3) + lengthdir_y(launch_amount, launch_direction);
	}
}