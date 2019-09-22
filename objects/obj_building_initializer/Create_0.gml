/// @description Insert description here
// You can write your code in this editor
buildings = ds_list_create();

count = instance_number(obj_bg_building);

base_scroll = .85;
scroll_speed = 1;
increment = (1 - base_scroll) / count;
gray = 20;
gray_increment = gray / count;

for(i = 0; i < count; i++) 
{
    building = instance_find(obj_bg_building, i);
	building.scroll_speed = scroll_speed;
	//building.gray = gray;
	scroll_speed -= increment; 
	gray -= gray_increment;
}