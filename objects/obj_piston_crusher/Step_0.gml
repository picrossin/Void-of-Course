/// @description Insert description here
// You can write your code in this editor
switch (current_state) {
	case crusher_state.crush:
		if (down) {
			if (!position_meeting(x, y + yspeed, obj_piston_crusher) && position_meeting(x, y + yspeed, obj_collision_with_recharge) && !position_meeting(x, y + yspeed, obj_player)) {
				screen_shake(1, 7);	
				yspeed = 0;
				last_state = crusher_state.crush;
				current_state = crusher_state.asleep;
			} else {
				yspeed += acceleration;
			}
			phy_position_y += yspeed;
			if (instance_exists(obj_player)) {
				if (collision_rectangle(x, y, x + sprite_width, y + 16, obj_player, true, true) && position_meeting(x, y + 17, obj_collision_with_recharge) && !position_meeting(x, y + 17, obj_player)) {
					obj_player.dead = true;
				}
			}
			break;
		} else {
			if (!position_meeting(x, y - yspeed, obj_piston_crusher) && position_meeting(x, y - yspeed, obj_collision_with_recharge) && !position_meeting(x, y - yspeed, obj_player)) {
				screen_shake(1, 7);	
				yspeed = 0;
				last_state = crusher_state.crush;
				current_state = crusher_state.asleep;
			} else {
				yspeed -= acceleration;
			}
			phy_position_y += yspeed;
			if (instance_exists(obj_player)) {
				if (collision_rectangle(x, y, x - sprite_width, y - 16, obj_player, true, true) && position_meeting(x, y - 17, obj_collision_with_recharge) && !position_meeting(x, y - 17, obj_player)) {
					obj_player.dead = true;
				}
			}
			break;
		}
	case crusher_state.retract:
		if (down) {
			if (y <= ystart) {
				yspeed = 0;
				last_state = crusher_state.retract;
				current_state = crusher_state.asleep;
			} else {
				yspeed -= acceleration;
			}
			phy_position_y += yspeed;
			break;
		} else {
			if (y >= ystart) {
				yspeed = 0;
				last_state = crusher_state.retract;
				current_state = crusher_state.asleep;
			} else {
				yspeed += acceleration;
			}
			phy_position_y += yspeed;
			break;	
		}
	
		
	case crusher_state.asleep:
		yspeed = 0;
		break;
}