/// @description Insert description here
// You can write your code in this editor
initialized_collision_area = false;
collision_box_length = 0;
drop = false;
yspeed = 0;
acceleration = .1;

candle_light = instance_create_depth(x + sprite_width / 2, y - sprite_height / 2, depth, obj_light);
candle_light.image_xscale = 8;
candle_light.image_yscale = 8;