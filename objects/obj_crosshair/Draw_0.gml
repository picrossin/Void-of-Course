if (obj_player.reloaded) crosshair_color = c_green;
else crosshair_color = c_red;

draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, crosshair_color, 1);