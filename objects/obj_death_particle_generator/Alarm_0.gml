/// @description Insert description here
// You can write your code in this editor
var right_particle = instance_create_depth(x, y, -3000, obj_death_particle);
var up_right_particle = instance_create_depth(x, y, -3000, obj_death_particle);
var up_particle = instance_create_depth(x, y, -3000, obj_death_particle);
var up_left_particle = instance_create_depth(x, y, -3000, obj_death_particle);
var left_particle = instance_create_depth(x, y, -3000, obj_death_particle);
var down_left_particle = instance_create_depth(x, y, -3000, obj_death_particle);
var down_particle = instance_create_depth(x, y, -3000, obj_death_particle);
var down_right_particle = instance_create_depth(x, y, -3000, obj_death_particle);

right_particle.particle_dir = dir.right;
up_right_particle.particle_dir = dir.up_right;
up_particle.particle_dir = dir.up;
up_left_particle.particle_dir = dir.up_left;
left_particle.particle_dir = dir.left;
down_left_particle.particle_dir = dir.down_left;
down_particle.particle_dir = dir.down;
down_right_particle.particle_dir = dir.down_right;

effects--;
if (effects > 0) {
	alarm[0] = room_speed * .3;
} else {
	transition = true;
}