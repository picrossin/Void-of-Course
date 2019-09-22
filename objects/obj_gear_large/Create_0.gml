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
physics_fixture_add_point(fix[0], 17, 77);
physics_fixture_add_point(fix[0], 13, 95);
physics_fixture_add_point(fix[0], -14, 95);
physics_fixture_add_point(fix[0], -17, 77);

fix[1] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[1]);
physics_fixture_add_point(fix[1], 42, 66);
physics_fixture_add_point(fix[1], 17, 77);
physics_fixture_add_point(fix[1], -17, 77);
physics_fixture_add_point(fix[1], -41, 67);

fix[2] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[2]);
physics_fixture_add_point(fix[2], 75, 57);
physics_fixture_add_point(fix[2], 57, 76);
physics_fixture_add_point(fix[2], 42, 66);

fix[3] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[3]);
physics_fixture_add_point(fix[3], 75, 57);
physics_fixture_add_point(fix[3], 42, 66);
physics_fixture_add_point(fix[3], -41, 67);
physics_fixture_add_point(fix[3], -78, 56);
physics_fixture_add_point(fix[3], 67, 40);

fix[4] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[4]);
physics_fixture_add_point(fix[4], -41, 67);
physics_fixture_add_point(fix[4], -59, 76);
physics_fixture_add_point(fix[4], -78, 56);

fix[5] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[5]);
physics_fixture_add_point(fix[5], 76, 16);
physics_fixture_add_point(fix[5], 67, 40);
physics_fixture_add_point(fix[5], -78, 56);
physics_fixture_add_point(fix[5], -70, 39);

fix[6] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[6]);
physics_fixture_add_point(fix[6], 95, 13);
physics_fixture_add_point(fix[6], -70, 39);
physics_fixture_add_point(fix[6], -79, 16);
physics_fixture_add_point(fix[6], 78, -17);
physics_fixture_add_point(fix[6], 95, -13);

fix[7] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[7]);
physics_fixture_add_point(fix[7], 78, -17);
physics_fixture_add_point(fix[7], -79, 16);
physics_fixture_add_point(fix[7], -97, 13);
physics_fixture_add_point(fix[7], 66, -45);

fix[8] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[8]);
physics_fixture_add_point(fix[8], 77, -59);
physics_fixture_add_point(fix[8], 66, -45);
physics_fixture_add_point(fix[8], -97, 13);
physics_fixture_add_point(fix[8], -78, -17);

fix[9] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[9]);
physics_fixture_add_point(fix[9], -97, 13);
physics_fixture_add_point(fix[9], -97, -14);
physics_fixture_add_point(fix[9], -78, -17);

fix[10] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[10]);
physics_fixture_add_point(fix[10], 77, -59);
physics_fixture_add_point(fix[10], -78, -17);
physics_fixture_add_point(fix[10], -68, -43);
physics_fixture_add_point(fix[10], 41, -70);

fix[11] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[11]);
physics_fixture_add_point(fix[11], 41, -70);
physics_fixture_add_point(fix[11], 56, -77);
physics_fixture_add_point(fix[11], 77, -59);

fix[12] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[12]);
physics_fixture_add_point(fix[12], 15, -78);
physics_fixture_add_point(fix[12], 41, -70);
physics_fixture_add_point(fix[12], -68, -43);
physics_fixture_add_point(fix[12], -79, -60);
physics_fixture_add_point(fix[12], -41, -68);

fix[13] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[13]);
physics_fixture_add_point(fix[13], -14, -97);
physics_fixture_add_point(fix[13], 13, -97);
physics_fixture_add_point(fix[13], 15, -78);
physics_fixture_add_point(fix[13], -17, -78);

fix[14] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[14]);
physics_fixture_add_point(fix[14], -79, -60);
physics_fixture_add_point(fix[14], -59, -79);
physics_fixture_add_point(fix[14], -41, -68);

fix[15] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[15]);
physics_fixture_add_point(fix[15], 15, -78);
physics_fixture_add_point(fix[15], -41, -68);
physics_fixture_add_point(fix[15], -17, -78);

for (var i = 0; i < 16; i += 1) {
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