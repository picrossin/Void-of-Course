/// @description launch
if (instance_exists(obj_player)) {
	launch_direction = point_direction(x, y, obj_player.x, obj_player.y);
	phy_speed_x = (phy_speed_x * .35) + lengthdir_x(3, launch_direction);
	phy_speed_y = (phy_speed_y * .4) + lengthdir_y(3, launch_direction);
}
alarm[1] = room_speed * 1.5;