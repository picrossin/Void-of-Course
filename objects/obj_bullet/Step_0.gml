/// @description Insert description here
// You can write your code in this editor
x += 6 * dcos(image_angle);
y += 6 * -dsin(image_angle);
bullet_light.x = x;
bullet_light.y = y;
if (!collision_circle(x, y, sprite_width / 2, obj_enemy, true, false) && !collision_circle(x, y, sprite_width / 2, obj_bridge, true, false) && !collision_circle(x, y, sprite_width / 2, obj_crate, true, false)) {
	if (collision_circle(x, y, sprite_width / 2, obj_collision_with_recharge, true, false)) {
		instance_destroy();
	}
}