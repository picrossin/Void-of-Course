/// @description Insert description here
// You can write your code in this editor
if (global.pause) exit;
if (image_index >= 7 && state == State.open) {
	state = State.on;
	alarm[1] = room_speed * 3;
	laser_light = instance_create_depth(x + sprite_width / 2, y + sprite_height / 2, 200, obj_light);
	laser_light.light_scale = 12;
	laser_light.color = c_red;
}
if (state == State.on) {
	if (image_index >= 15 ) {
		image_index = 8;	
	}
} else if (state == State.close) {
	if (image_index == 0) {
		image_speed = 0;
		image_alpha = 0;
		state = State.off;
		instance_destroy(laser_light);
	}
}
if (object_exists(obj_player)) {
	if ((place_meeting(x, y, obj_player) || place_meeting(x, y, obj_player)) && state == State.on) {
		obj_player.dead = true;
	}
}