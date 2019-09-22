/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_boss_body, 0, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
draw_sprite(spr_engaged_visor, engaged_sprite, x, y);
draw_sprite(spr_propellor, propellor_sprite, x, y);
propellor_sprite++;
engaged_sprite++;