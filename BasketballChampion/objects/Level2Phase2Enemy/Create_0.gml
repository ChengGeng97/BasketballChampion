/// @description Insert description here
// You can write your code in this editor

enum Level2Phase2EnemyState
{
	FIRING, HIT, DISAPPEAR, HIDING, APPEAR
}

level_two_enemy_state = Level2Phase2EnemyState.FIRING;

firing_period = 60;
firing_counter = 0;

hit_state_frames = 30;
disappear_state_frames = 10;
hiding_state_frames = 60;
appear_state_frames = 18;

frame_counter = 0;


bullets_per_spawn = 50;
bullet_speed = 2;

dir_x[bullets_per_spawn] = 0;
dir_y[bullets_per_spawn] = 0;

var cumul_angle = 0.0;
var incremental_angle = 360 / bullets_per_spawn;

for (var i = 0; i < bullets_per_spawn; i++)
{
	dir_x[i] = dcos(cumul_angle);
	dir_y[i] = dsin(cumul_angle);
	cumul_angle += incremental_angle;
}
