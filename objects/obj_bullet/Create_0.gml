/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
bullet_color = c_white;
color_amount = 0;
interpolate_forward = true;
current_color = 0;
colors[0] = c_red;
colors[1] = c_blue;
interpolate_speed = .075;

bullet_light = instance_create_depth(x, y, 200, obj_light);
bullet_light.light_scale = 6;

screen_shake(2, 10);