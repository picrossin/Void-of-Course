/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_body, 0, x, y);

if (chase) {
	if (engaged_sprite == 0) {
		engaged_sprite = 1;
	} else {
		engaged_sprite = 0;	
	}
	draw_sprite(spr_engaged_visor, engaged_sprite, x, y);
} else {
	draw_sprite(spr_sleep_visor, 0, x, y);
}
draw_sprite(spr_propellor, propellor_sprite, x, y);
propellor_sprite++;