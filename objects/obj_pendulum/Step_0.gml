/// @description Insert description here
// You can write your code in this editor
if (!init) {
	phy_rotation = 90;
	init = true;
}

var acceleration = magnitude * dsin(-phy_rotation);
velocity += acceleration;
phy_rotation -= velocity;