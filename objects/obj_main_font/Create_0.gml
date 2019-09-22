map_string = " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!?,.-()0123456789";
font = font_add_sprite_ext(spr_main_font, map_string, false, .5);

draw_set_font(font);
text = "";
color = c_white;