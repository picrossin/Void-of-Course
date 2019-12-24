/// @desc Draw player

if (beat_level) {
	alpha -= .2;	
}
sprite_index = player_skin;
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, -phy_rotation, c_white, alpha);
//draw_sprite_ext(spr_planet_shadow, 0, x, y, 1, 1, 0, c_white, alpha);
