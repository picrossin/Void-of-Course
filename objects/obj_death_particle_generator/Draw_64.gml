/// @description Insert description here
// You can write your code in this editor
if (transition) {
	draw_set_color(c_black);
	draw_rectangle(width - transition_x, 0, width, height, false);
	transition_x *= 1.1;
	if (transition_x >= width) {
		room_restart();
	}
}