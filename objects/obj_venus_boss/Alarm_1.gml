/// @description launch
if (instance_exists(obj_player)) {
	launch_direction = point_direction(x, y, obj_player.x, obj_player.y);
	phy_speed_x = (phy_speed_x * .25) + lengthdir_x(2.5, launch_direction);
	phy_speed_y = (phy_speed_y * .3) + lengthdir_y(2.5, launch_direction);
}
alarm[1] = room_speed * 3;