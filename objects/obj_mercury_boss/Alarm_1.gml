/// @description Fire bullet
if (!global.pause) {
	if (instance_exists(obj_player)) {
		direction_to_player = point_direction(x, y, obj_player.x, obj_player.y);
		bullet = instance_create_depth(x, y, -2000, obj_mercury_boss_bullet);
		bullet.image_angle = direction_to_player;
	}
}
alarm[1] = room_speed * 2;