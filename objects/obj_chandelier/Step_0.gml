/// @description Insert description here
// You can write your code in this editor
if (!initialized_collision_area) {
	if (!position_meeting(x, y + collision_box_length, obj_collision_with_recharge)) {
		collision_box_length += 2;	
	} else {
		initialized_collision_area = true;	
	}
	
} else {
	if (collision_rectangle(x, y, x + sprite_width, y + collision_box_length, obj_player, false, true)) {
		drop = true;
	}
}
if (drop) {
	if (place_meeting(x, y, obj_collision_with_recharge) && !place_meeting(x, y, obj_player)) {
		instance_destroy();	
	}
	yspeed += acceleration;
	y += yspeed;
}

if (instance_exists(candle_light)) {
	candle_light.x = x + sprite_width / 2;
	candle_light.y = y - sprite_height / 2;
}