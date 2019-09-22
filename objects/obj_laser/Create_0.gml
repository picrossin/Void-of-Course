/// @description Insert description here
// You can write your code in this editor
depth = -300;
image_alpha = 0;
image_speed = 0;
alarm[0] = room_speed * 3;

enum State {
	open,
	on,
	close,
	off
}

state = State.off;