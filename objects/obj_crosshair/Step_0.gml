/// @description Movement code
if (global.pause) exit;

if (instance_exists(obj_player)) {
	if (obj_player.using_controller) {
		input_direction = obj_player.launch_direction;
		input_distance = point_distance(0, 0, gamepad_axis_value(0, gp_axislh) * 30, gamepad_axis_value(0, gp_axislv) * 30);
	} else {
		input_direction = obj_player.launch_direction;
		input_distance = point_distance(obj_player.x, obj_player.y, mouse_x, mouse_y);
		if (input_distance >= 30) {
			input_distance = 30;	
		}
	}
}

image_angle = input_direction;
x = obj_player.x + lengthdir_x(5, input_direction);
y = obj_player.y + lengthdir_y(5, input_direction);