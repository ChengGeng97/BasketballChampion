/// @description Insert description here
// You can write your code in this editor

enum FightingTutorialState
{
	START, REACH_PLATE, BAG_DIED
}

manager_state = FightingTutorialState.START;

bullets_per_spawn = 40;
shoot_period = 180;
frame_counter = 170;
xPositions[bullets_per_spawn] = 0;
incremental_space = room_width / bullets_per_spawn;
cumul_space = 10;

for (var i = 0; i < bullets_per_spawn; i++)
{
	xPositions[i] = cumul_space;
	cumul_space += incremental_space;
}
