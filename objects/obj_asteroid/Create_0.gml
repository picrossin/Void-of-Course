/// @description Insert description here
// You can write your code in this editor
image_index = random_range(0, 3);
size = 1;
image_xscale = size;
image_yscale = size;
image_angle = random_range(0, 360);
rotate_speed = random_range(-.25, .25);

fixture = physics_fixture_create();
physics_fixture_set_circle_shape(fixture, (sprite_width / 2) * size);

physics_fixture_set_density(fixture, 0.1);
physics_fixture_set_restitution(fixture, 0.1);
physics_fixture_set_linear_damping(fixture, 0.1);
physics_fixture_set_angular_damping(fixture, 0.1);
physics_fixture_set_friction(fixture, 0.2);
physics_fixture_bind(fixture, id);
physics_fixture_delete(fixture);