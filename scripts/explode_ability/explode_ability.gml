/// @desc explode_ability() Explode the player if the ability is active

if (instance_exists(obj_player)) {
	with (obj_player) {
		if (explode_period > 0) {
			explode_period--;
			explosion = instance_create_depth(x, y, depth - 10 + explode_period, obj_explosion);
			explosion.image_alpha = .3;
			explosion.image_angle =  image_angle;
		} else {
			explode_period = 20;
			explode = false;
		}
	}
}