if (place_meeting(x, y, obj_player)) {
	obj_player.dead = true;
}

if (instance_exists(obj_player) && attack) {
	if (obj_player.x > x) {
		phy_speed_x = .5;	
		image_xscale = -1;
	} else {
		phy_speed_x = -.5;	
		image_xscale = 1;
	}
	if (obj_player.y > y) {
		phy_speed_y = .5;	
	} else {
		phy_speed_y = -.5;	
	}
}

colliding_bullet = instance_place(x, y, obj_bullet);
if (!hit && colliding_bullet != noone) {
	hit = true;
	instance_destroy(colliding_bullet);
	boss_light.color = c_black;
	image_blend = c_gray;
	alarm[0] = 3;
}

if (hp <= 0) {
	instance_create_depth(x, y, depth, obj_exit);
	instance_destroy();
}

boss_light.x = x;
boss_light.y = y;