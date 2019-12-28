/// @description Creation code
// movement/controls variables
using_controller = false;
launched = false;
reloaded = true;
reload_delay_started = false;
clamp_x = false;
has_gun = false;
shot = false;
launch_amount = 2.9;
grav = .015;
explode = false;
explode_period = 20;
shoot_offset = 10;
launch_direction = 0;

// set deadzone if using controller
gamepad_set_axis_deadzone(0, .1);

// player visuals
depth = -1001;
alpha = 1;
player_light = instance_create_depth(x, y, 200, obj_light);
player_light.light_scale = 12;
instance_create_depth(x, y, -1000, obj_crosshair);
instance_create_depth(x, y, -1000, obj_pointer);
player_skin = spr_mars;

if (instance_exists(obj_skins_loader)) {
	player_skin = obj_skins_loader.current;
}

// transitions
width = display_get_width();
height = display_get_height();

// pause menu
instance_create_depth(x, y, depth, obj_pause_menu);

// game variables
dead = false;
began_level = false;
beat_level = false;
transition_x = 1;
created_level_text = false;
text_alpha_grow = true;

// environmental variables
in_space = false;

// sound
hit_play = true;
level_beat_sound_played = false;