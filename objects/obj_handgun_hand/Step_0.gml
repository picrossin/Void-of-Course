/// @description Insert description here
// You can write your code in this editor
x += 1.5 * dcos(image_angle);
y += 1.5 * -dsin(image_angle);
if (collision_circle(x, y, sprite_width / 2, obj_wall, true, false)) {
	instance_destroy();
}
if (place_meeting(x, y, obj_player)) {
	obj_player.dead = true;
}