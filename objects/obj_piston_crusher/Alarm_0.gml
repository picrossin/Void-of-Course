/// @description Insert description here
// You can write your code in this editor
if (wait == true) {
	wait = false;
} else {
	if (last_state == crusher_state.crush) current_state = crusher_state.retract;
	else current_state = crusher_state.crush;
}
alarm[0] = offset * room_speed;