/// @description Instantiate variables for menu

// Initialize menu system
enum menu {
	title_screen = 0, world_select = 1, mars_select = 2, venus_select = 3, mercury_select = 4, jupiter_select = 5	
}

globalvar room_from;
global.room_from = room;

current_menu = menu.title_screen;

// direction controls
move_right = false;
move_left = false;
moved = true;
angle_set = false;
stick_reset = true;

// button variables
buttons_initialized = false;
buttons[0] = "";
active_button = 0;
created_buttons[0] = "";

// text movement variables
growth = 0;
growing = false;