/// @description Insert description here
// You can write your code in this editor
world_1 = ds_list_create();
world_2 = ds_list_create();
world_3 = ds_list_create();
world_4 = ds_list_create();

world_progresses = load_progress();
if (ds_exists(world_progresses, ds_type_list) && !ds_list_empty(world_progresses)) {
	if (ds_list_size(ds_list_find_value(world_progresses, 0)) > 0) {
		world_1 = ds_list_find_value(world_progresses, 0);
	}
	if (ds_list_size(ds_list_find_value(world_progresses, 1)) > 0) {
		world_2 = ds_list_find_value(world_progresses, 1);
	}
	if (ds_list_size(ds_list_find_value(world_progresses, 2)) > 0) {
		world_3 = ds_list_find_value(world_progresses, 2);
	}
	if (ds_list_size(ds_list_find_value(world_progresses, 3)) > 0) {
		world_4 = ds_list_find_value(world_progresses, 3);
	}
}