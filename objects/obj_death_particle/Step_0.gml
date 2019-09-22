/// @description Insert description here
// You can write your code in this editor
switch (particle_dir) {
	case dir.right:
		image_angle = 0;
		break;
	case dir.up_right:
		image_angle = 45;
		break;
	case dir.up:
		image_angle = 90;
		break;
	case dir.up_left:
		image_angle = 135;
		break;
	case dir.left:
		image_angle = 180;
		break;
	case dir.down_left:
		image_angle = 225;
		break;
	case dir.down:
		image_angle = 270;
		break;
	case dir.down_right:
		image_angle = 315;
		break;
}

h_vel = lengthdir_x(6, image_angle);
v_vel = lengthdir_y(6, image_angle);
x += h_vel;
y += v_vel;