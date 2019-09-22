/// @description Insert description here
// You can write your code in this editor
switch (current_state) {
	case crusher_state.crush:
		if (right) {
			if (!position_meeting(x + xspeed, y, obj_piston_crusher_sideways) && position_meeting(x + xspeed, y, obj_collision_with_recharge) && !position_meeting(x + xspeed, y, obj_player)) {
				screen_shake(1, 7);	
				xspeed = 0;
				last_state = crusher_state.crush;
				current_state = crusher_state.asleep;
			} else {
				xspeed += acceleration;
			}
			phy_position_x += xspeed;
			if (instance_exists(obj_player)) {
				if (collision_rectangle(x, y, x + 16, y + sprite_height, obj_player, true, true) && position_meeting(x + 17, y, obj_collision_with_recharge) && !position_meeting(x + 17, y, obj_player)) {
					obj_player.dead = true;
				}
			}
			break;
		} else {
			if (!position_meeting(x - xspeed, y, obj_piston_crusher_sideways) && position_meeting(x - xspeed, y, obj_collision_with_recharge) && !position_meeting(x - xspeed, y, obj_player)) {
				screen_shake(1, 7);	
				xspeed = 0;
				last_state = crusher_state.crush;
				current_state = crusher_state.asleep;
			} else {
				xspeed -= acceleration;
			}
			phy_position_x += xspeed;
			if (instance_exists(obj_player)) {
				if (collision_rectangle(x, y, x - 16, y - sprite_height, obj_player, true, true) && position_meeting(x - 17, y, obj_collision_with_recharge) && !position_meeting(x - 17, y, obj_player)) {
					obj_player.dead = true;
				}
			}
			break;
		}
	case crusher_state.retract:
		if (right) {
			if (x <= xstart) {
				xspeed = 0;
				last_state = crusher_state.retract;
				current_state = crusher_state.asleep;
			} else {
				xspeed -= acceleration;
			}
			phy_position_x += xspeed;
			break;
		} else {
			if (x >= xstart) {
				xspeed = 0;
				last_state = crusher_state.retract;
				current_state = crusher_state.asleep;
			} else {
				xspeed += acceleration;
			}
			phy_position_x += xspeed;
			break;	
		}
	case crusher_state.asleep:
		xspeed = 0;
		break;
}