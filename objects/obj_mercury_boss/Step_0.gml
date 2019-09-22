/// @description Insert description here
// You can write your code in this editor
// apply counter-gravity such that the object floats
if (!global.pause) {
	physics_apply_local_force(0, 0, 0, -10);
	if (hp <= 0) {
		instance_create_depth(x, y, depth, obj_exit);
		instance_destroy();	
	}
	colliding_bullet = instance_place(x, y, obj_bullet);
	if (colliding_bullet != noone) {
		instance_destroy(colliding_bullet);
		hp--;
		alarm[0] = 2;
		image_alpha = 0;
		screen_shake(3, 10);
	}
	if (instance_exists(obj_player)) {
		if (place_meeting(x, y, obj_player)) {
			if (obj_player.explode) {
					if (!hit) {
						hit = true;
						hp -= 2;
					}
					alarm[0] = 5;
					image_alpha = 0;
					screen_shake(3, 10);
				} else {
					obj_player.dead = true;	
				}
		}
	
		if (x > obj_player.x) {
			physics_apply_local_force(0, 0, -flight_speed, 0);
		} else {
			physics_apply_local_force(0, 0, flight_speed, 0);
		}
		if (y > obj_player.y) {
			physics_apply_local_force(0, 0, 0, -flight_speed);
		} else {
			physics_apply_local_force(0, 0, 0, flight_speed);
		}
	}
}