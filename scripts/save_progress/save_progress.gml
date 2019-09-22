/// @desc save_progress(world_1, world_2, world_3, world_4)
/// @arg world_1 list of the levels the player has completed in world 1
/// @arg world_2 list of the levels the player has completed in world 2
/// @arg world_3 list of the levels the player has completed in world 3
/// @arg world_4 list of the levels the player has completed in world 4

var world_1_list = ds_list_create();
var world_2_list = ds_list_create();
var world_3_list = ds_list_create();
var world_4_list = ds_list_create();

for (i = 0; i < ds_list_size(argument0); ++i) {
	ds_list_add(world_1_list, ds_list_find_value(argument0, i));	
}
for (i = 0; i < ds_list_size(argument1); ++i) {
	ds_list_add(world_2_list, ds_list_find_value(argument1, i));	
}
for (i = 0; i < ds_list_size(argument2); ++i) {
	ds_list_add(world_3_list, ds_list_find_value(argument2, i));	
}
for (i = 0; i < ds_list_size(argument3); ++i) {
	ds_list_add(world_4_list, ds_list_find_value(argument3, i));	
}

var root_list = ds_list_create();
ds_list_add(root_list, world_1_list, world_2_list, world_3_list, world_4_list);
ds_list_mark_as_list(root_list, 0);
ds_list_mark_as_list(root_list, 1);
ds_list_mark_as_list(root_list, 2);
ds_list_mark_as_list(root_list, 3);
var wrapper = ds_map_create();
ds_map_add_list(wrapper, "ROOT", root_list);

var json_string = json_encode(wrapper);
save_string_to_file("progress.sav", json_string);

ds_map_destroy(wrapper);