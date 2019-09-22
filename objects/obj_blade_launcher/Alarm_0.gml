/// @description create blade
blade = instance_create_depth(x, y, depth + 1, obj_blade);
switch (shoot_direction) {
	case blade_direction.up:
		blade.yspeed = -velocity;
		break;
	case blade_direction.down:
		blade.yspeed = velocity;
		break;
	case blade_direction.left:
		blade.xspeed = -velocity;
		break;
	case blade_direction.right:
		blade.xspeed = velocity;
		break;		
}
alarm[0] = room_speed * 3;