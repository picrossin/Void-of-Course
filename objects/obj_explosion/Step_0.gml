/// @description Insert description here
// You can write your code in this editor
if (image_index >= 3) {
	instance_destroy();	
}
if (instance_exists(obj_player)) {
	if (obj_player.beat_level) instance_destroy();	
}