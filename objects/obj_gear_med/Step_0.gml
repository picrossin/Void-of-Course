/// @description Insert description here
// You can write your code in this 
if (!initialized) {
	if (!rotate_clockwise) {
		rotation_destination_interval *= -1;
	}
	initialized = true;
}

if (instance_exists(obj_rhythm_controller)) {
	if (obj_rhythm_controller.second_elapsed) {
		move = true;	
		rotation_destination = phy_rotation + rotation_destination_interval;
	}
}

if (move) {
	if (rotate_clockwise && phy_rotation < rotation_destination) 
		phy_rotation += rotation_interval;
	else if (!rotate_clockwise && phy_rotation > rotation_destination)
		phy_rotation -= rotation_interval;
	else
		move = false;
}

