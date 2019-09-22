/// @description Insert description here
// You can write your code in this editor
switch (current_state) {
	case crusher_state.crush:
		if (position_meeting(x, y + yspeed, obj_collision_with_recharge) && !position_meeting(x, y + yspeed, obj_player)) {
			screen_shake(3, 10);
			current_state = crusher_state.retract;
		}
		if (instance_exists(obj_player)) {
			if (collision_rectangle(x, y, x + sprite_width, y + 16, obj_player, true, true) && position_meeting(x, y + 17, obj_collision_with_recharge) && !position_meeting(x, y + 17, obj_player)) {
				obj_player.dead = true;
			}
		}
		yspeed += acceleration
		phy_position_y += yspeed
		break;
	case crusher_state.retract:
		if (y <= ystart) {
			current_state = crusher_state.asleep;	
		}
		phy_position_y -= retract_speed;
		break;
	case crusher_state.asleep:
		yspeed = 0;
		if (!set_alarm) {
			alarm[0] = room_speed * offset;
			set_alarm = true;
		}
		break;
}