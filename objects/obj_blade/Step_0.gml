/// @description Insert description here
// You can write your code in this editor
if (!global.pause) {
	x += xspeed;
	y += yspeed;

	if (place_meeting(x, y, obj_collision_with_recharge) && !place_meeting(x, y, obj_player)) {
		instance_destroy();	
	}

	image_angle += 6;
}