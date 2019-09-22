/// @description Insert description here
// You can write your code in this editor
flip = irandom_range(0, 1);
image_speed *= random_range(.5, 1);
if (flip == 1) {
	image_xscale *= -1;
}