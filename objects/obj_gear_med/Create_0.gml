/// @description Insert description here
// You can write your code in this editor

initialized = false;

rotate_clockwise = true;
rotation_destination_interval = 60; // row much should I rotate every second (in degrees)?
rotation_interval = 2; // how much should I rotate each tick
move = false;
rotation_destination = 0;

// Physics settings
var fix, offsetx, offsety;

offsetx = sprite_width/2-sprite_xoffset;
offsety = sprite_height/2-sprite_yoffset;


fix[0] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[0]);
physics_fixture_add_point(fix[0], 9, 46);
physics_fixture_add_point(fix[0], 7, 57);
physics_fixture_add_point(fix[0], -9, 57);
physics_fixture_add_point(fix[0], -12, 46);

fix[1] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[1]);
physics_fixture_add_point(fix[1], 25, 40);
physics_fixture_add_point(fix[1], 9, 46);
physics_fixture_add_point(fix[1], -12, 46);
physics_fixture_add_point(fix[1], -26, 40);

fix[2] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[2]);
physics_fixture_add_point(fix[2], 45, 34);
physics_fixture_add_point(fix[2], 34, 45);
physics_fixture_add_point(fix[2], 25, 40);

fix[3] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[3]);
physics_fixture_add_point(fix[3], 45, 34);
physics_fixture_add_point(fix[3], 25, 40);
physics_fixture_add_point(fix[3], -26, 40);
physics_fixture_add_point(fix[3], -48, 33);
physics_fixture_add_point(fix[3], 40, 24);

fix[4] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[4]);
physics_fixture_add_point(fix[4], -26, 40);
physics_fixture_add_point(fix[4], -36, 45);
physics_fixture_add_point(fix[4], -48, 33);

fix[5] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[5]);
physics_fixture_add_point(fix[5], 46, 10);
physics_fixture_add_point(fix[5], 40, 24);
physics_fixture_add_point(fix[5], -48, 33);
physics_fixture_add_point(fix[5], -43, 24);

fix[6] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[6]);
physics_fixture_add_point(fix[6], 57, 6);
physics_fixture_add_point(fix[6], 46, 10);
physics_fixture_add_point(fix[6], -43, 24);
physics_fixture_add_point(fix[6], -48, 10);
physics_fixture_add_point(fix[6], 46, -12);
physics_fixture_add_point(fix[6], 57, -9);

fix[7] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[7]);
physics_fixture_add_point(fix[7], 46, -12);
physics_fixture_add_point(fix[7], -48, 10);
physics_fixture_add_point(fix[7], -59, 7);
physics_fixture_add_point(fix[7], -59, -9);
physics_fixture_add_point(fix[7], 40, -26);

fix[8] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[8]);
physics_fixture_add_point(fix[8], 45, -37);
physics_fixture_add_point(fix[8], 40, -26);
physics_fixture_add_point(fix[8], -59, -9);
physics_fixture_add_point(fix[8], -48, -12);

fix[9] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[9]);
physics_fixture_add_point(fix[9], 45, -37);
physics_fixture_add_point(fix[9], -48, -12);
physics_fixture_add_point(fix[9], -42, -26);
physics_fixture_add_point(fix[9], 24, -43);

fix[10] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[10]);
physics_fixture_add_point(fix[10], 24, -43);
physics_fixture_add_point(fix[10], 34, -48);
physics_fixture_add_point(fix[10], 45, -37);

fix[11] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[11]);
physics_fixture_add_point(fix[11], 9, -48);
physics_fixture_add_point(fix[11], 24, -43);
physics_fixture_add_point(fix[11], -42, -26);
physics_fixture_add_point(fix[11], -48, -36);
physics_fixture_add_point(fix[11], -26, -42);

fix[12] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[12]);
physics_fixture_add_point(fix[12], -9, -59);
physics_fixture_add_point(fix[12], 7, -59);
physics_fixture_add_point(fix[12], 9, -48);
physics_fixture_add_point(fix[12], -11, -48);

fix[13] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[13]);
physics_fixture_add_point(fix[13], -48, -36);
physics_fixture_add_point(fix[13], -37, -48);
physics_fixture_add_point(fix[13], -26, -42);

fix[14] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[14]);
physics_fixture_add_point(fix[14], 9, -48);
physics_fixture_add_point(fix[14], -26, -42);
physics_fixture_add_point(fix[14], -11, -48);

for (var i = 0; i < 15; i += 1) {
  physics_fixture_set_density(fix[i], 0);
  physics_fixture_set_friction(fix[i], 0.20);
  physics_fixture_set_linear_damping(fix[i], 0.10);
  physics_fixture_set_angular_damping(fix[i], 0.10);
  physics_fixture_set_restitution(fix[i], 0.10);
  physics_fixture_set_sensor(fix[i], 0);
  physics_fixture_set_awake(fix[i], 1);
  physics_fixture_bind_ext(fix[i], id, 0-offsetx, 0-offsety);
  physics_fixture_delete(fix[i]);
}