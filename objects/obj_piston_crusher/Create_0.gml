/// @description Insert description here
// You can write your code in this editor

yspeed = 0;
acceleration = .2;
current_state = crusher_state.asleep;
last_state = crusher_state.retract;

down = true;

offset = 1;
wait = false;
alarm[0] = room_speed * offset;