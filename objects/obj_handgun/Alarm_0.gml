/// @description Insert description here
// You can write your code in this editor
alarm[0] = room_speed * 2;
hand = instance_create_depth(x + lengthdir_x(4, image_angle), y + lengthdir_y(4, image_angle), depth + 1, obj_handgun_hand);
hand.image_angle = image_angle;