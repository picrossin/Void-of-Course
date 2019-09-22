/// @description Insert description here
// You can write your code in this editor
if (interpolate_forward) {
	color_amount += interpolate_speed;
	if (color_amount > 1) {
		color_amount--;
		current_color++;
	}
	if (current_color < (array_length_1d(colors) - 1)) {
		bullet_color = merge_colour(colors[current_color], colors[current_color + 1], color_amount);
	} else {
		interpolate_forward = false;
		color_amount = 1;
	}
} else {
	color_amount -= interpolate_speed;
	if (color_amount < 0) {
		color_amount++;
		current_color--;
	}
	if (current_color > 0) {
		bullet_color = merge_colour(colors[current_color - 1], colors[current_color], color_amount);	
	} else {
		interpolate_forward = true;
		color_amount = 0;
	}
}

draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, bullet_color, 1);
bullet_light.color = bullet_color;