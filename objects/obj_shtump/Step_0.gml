/// @description Insert description here
// You can write your code in this editor
if (hp <= 0) {
	instance_destroy();	
}
colliding_bullet = instance_place(x, y, obj_bullet);
if (colliding_bullet != noone) {
	instance_destroy(colliding_bullet);
	hp--;
	alarm[0] = 2;
	image_alpha = 0;
}
if (instance_exists(obj_player)) {
	if (place_meeting(x, y, obj_player)) {
		if (obj_player.explode) {
			screen_shake(3, 10);
			instance_destroy();	
		} else {
			obj_player.dead = true;	
		}
	}
	
	if (point_distance(x, y, obj_player.x, obj_player.y) < 150 && abs(obj_player.y - y) < 64) {
		chase = true;
	} else {
		chase = false;	
	}
	if (chase) {
		image_speed = 1;
		if (image_index >= 4) {
			image_index = 1;
		}
		if (x > obj_player.x) {
			phy_speed_x = -.5;
			image_xscale = 1;
		} else {
			phy_speed_x = .5;
			image_xscale = -1;
		}
	} else {
		phy_speed_x = 0;
		image_index = 0;
		image_speed = 0;
	}
}