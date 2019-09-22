/// @description Insert description here
// You can write your code in this editor
count = room_width / 50;
scroll = .5;
scroll_increment = scroll / count;
size = 1.5;
size_increment = scroll_increment;
for (i = 0; i < count; i++) {
	building = instance_create_depth(random_range(-25, room_width + 25), room_height, depth + i, obj_bg_building);	
	building.y_pos = room_height;
	scroll += scroll_increment;
	size -= size_increment;
	building.scroll_speed = scroll;
	building.image_xscale = size;
	building.image_yscale = size;
}