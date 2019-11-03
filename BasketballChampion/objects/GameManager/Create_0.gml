/// @description Insert description here
// You can write your code in this editor

if (variable_global_exists("max_HP"))
{
	max_HP = global.max_HP;
}
else
{
	global.max_HP = max_HP;
}

if (!variable_global_exists("lives_left"))
{
	global.lives_left = 3;
	//global.lives_left = 0;
}

show_debug_message("Room Start");

enum RoomState {
	ONGOING, DEAD, PAUSE
}

room_state = RoomState.ONGOING;

x_pad = 64;
y_pad = 32;

x_max_bound = x_pad + 700;
y_max_bound = y_pad + 900;


// Lifebar x-positions
lifebar_x_1[0] = 414;

lifebar_x_2[0] = 339;
lifebar_x_2[1] = 489;

lifebar_x_3[0] = 264;
lifebar_x_3[1] = 414;
lifebar_x_3[2] = 564;

lifebar_x_4[0] = 189;
lifebar_x_4[1] = 339;
lifebar_x_4[2] = 489;
lifebar_x_4[3] = 639;
