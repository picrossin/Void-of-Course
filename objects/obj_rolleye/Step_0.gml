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
			instance_destroy();	
			screen_shake(3, 10);
		} else {
			obj_player.dead = true;	
		}
	}
	
	if (point_distance(x, y, obj_player.x, obj_player.y) < 180 && abs(obj_player.y - y) < 64) {
		chase = true;
	} else {
		chase = false;	
	}
	if (chase) {
		image_index = 1;
		if (x > obj_player.x) {
			physics_apply_torque(-7.5);
		} else {
			physics_apply_torque(7.5);
		}
	} else {
		physics_apply_torque(0)
		image_index = 0;
	}
}