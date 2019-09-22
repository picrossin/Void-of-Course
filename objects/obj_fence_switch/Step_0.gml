/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_electric_fence)) {
	if (place_meeting(x, y, obj_player) && obj_electric_fence.on) {
		obj_electric_fence.on = false;
		image_index = 1;
	}
}