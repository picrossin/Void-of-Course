/// @description Insert description here
// You can write your code in this editor
enum crusher_state {
	asleep, crush, retract
}

yspeed = 0;
acceleration = .1;
retract_speed = 1;
current_state = crusher_state.asleep;

set_alarm = false;
offset = random_range(.8, 2);