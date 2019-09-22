/// @description Insert description here
// You can write your code in this editor
colliding_bullet = instance_place(x, y, obj_bullet);
if (colliding_bullet != noone) {
	instance_destroy(colliding_bullet);
	instance_destroy();
}
if (instance_exists(obj_player)) {
	if (place_meeting(x, y, obj_player)) {
		obj_player.phy_speed_y = -3;
		obj_player.reloaded = true;
		screen_shake(3, 10);
		instance_destroy();
	}
}

if (up) {
	if (y < ystart - hover_amount) {
		up = false;	
	} else {
		y -= .25;
	}
} else {
	if (y > ystart + hover_amount) {
		up = true;	
	} else {
		y += .25;	
	}
}