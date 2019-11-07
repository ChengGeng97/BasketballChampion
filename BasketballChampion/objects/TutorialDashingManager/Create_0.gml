/// @description Insert description here
// You can write your code in this editor

enum FightingTutorialState
{
	START, REACH_PLATE, BAG_DIED, PRE_START
}

manager_state = FightingTutorialState.PRE_START;
//manager_state = FightingTutorialState.START;


bullets_per_spawn = 40;
shoot_period = 180;
frame_counter = 170;
xPositions[bullets_per_spawn] = 0;
incremental_space = (GameManager.x_max_bound - GameManager.x_pad) / bullets_per_spawn;
cumul_space = GameManager.x_pad + 10;

for (var i = 0; i < bullets_per_spawn; i++)
{
	xPositions[i] = cumul_space;
	cumul_space += incremental_space;
}
