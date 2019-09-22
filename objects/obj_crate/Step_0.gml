/// @description Insert description here
// You can write your code in this editor
if (!global.pause) {
	phy_speed_y += crate_gravity;
}

colliding_bullet = instance_place(x, y, obj_bullet);
if (colliding_bullet != noone) {
	instance_destroy(colliding_bullet);
	hp--;
	image_index++;
}

if (hp <= 0) instance_destroy();