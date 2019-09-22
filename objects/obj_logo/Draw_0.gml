/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_logo_animation, image_index, x, y,image_xscale, image_yscale, 0, c_white, 1);
if (done_animating) {
	draw_sprite_ext(spr_logo, image_index, x, y, image_xscale, image_yscale, 0, logo_color, 1);
}

if (interpolate_forward) {
	color_amount += interpolate_speed;
	if (color_amount > 1) {
		color_amount--;
		current_color++;
	}
	if (current_color < (array_length_1d(colors) - 1)) {
		logo_color = merge_colour(colors[current_color], colors[current_color + 1], color_amount);
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
		logo_color = merge_colour(colors[current_color - 1], colors[current_color], color_amount);	
	} else {
		interpolate_forward = true;
		color_amount = 0;
	}
}