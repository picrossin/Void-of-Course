/// @description Insert description here
// You can write your code in this editor
enum position {
	front = 0, middle = 1, back = 2
}

cloud_position = irandom_range(0, 2);
switch (cloud_position) {
	case 0:
		scale = random_range(.9, 1);
		scroll_speed = random_range(.7, .8);
		cloud_position = position.front;
		break;
	case 1:
		scale = random_range(.6, .9);
		scroll_speed = random_range(.8, .9);
		cloud_position = position.middle;
		depth += 1;
		break;
	case 2:
		scale = random_range(.2, .6);
		scroll_speed = random_range(.9, 1);
		cloud_position = position.back;
		depth += 2;
		break;
}

image_index = cloud_position;
image_xscale = scale;
image_yscale = scale;
