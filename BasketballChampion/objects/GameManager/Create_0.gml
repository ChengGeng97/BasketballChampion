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
	PAUSE, ONGOING, DEAD, ENEMY_DEFEATED, STAGE_CLEAR
}

room_state = RoomState.ONGOING;

x_pad = 288;
y_pad = 32;

x_max_bound = x_pad + 700;
y_max_bound = y_pad + 900;


// Lifebar x-positions
lifebar_x_1[0] = 1264;

lifebar_x_2[0] = 1244;
lifebar_x_2[1] = 1344;

lifebar_x_3[0] = 1164;
lifebar_x_3[1] = 1264;
lifebar_x_3[2] = 1364;

lifebar_x_4[0] = 1144;
lifebar_x_4[1] = 1244;
lifebar_x_4[2] = 1344;
lifebar_x_4[3] = 1444;
