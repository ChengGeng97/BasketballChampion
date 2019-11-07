total_phase_HP = 600;
halfHealth = total_phase_HP / 2;
oneEighthHealth = total_phase_HP / 8;
HP = 600;

enum LevelTwoPhaseTwoState
{
	APPEAR, CHARGE, FIRE, PAUSE, DISAPPEAR, HIDDEN
}

appear_state_frames = 12;
charge_state_frames = 30;
fire_state_frames = 15;
pause_state_frames = 90;
disappear_state_frames = 10;
hidden_state_frames = 60;

frame_counter = 0;


level_two_phase_two_state = LevelTwoPhaseTwoState.APPEAR;

character = instance_create_depth(350, 128, 6, Level2Phase2Enemy);

top_mole = instance_create_depth(640, 224, 6, BigMole);
top_mole.movement_speed = 5;

mid_mole = instance_create_depth(64, 416, 6, BigMole);
mid_mole.going_left = false;
mid_mole.image_xscale = -1;
mid_mole.movement_speed = 6;

bot_mole = instance_create_depth(640, 608, 6, BigMole);

possible_ys[2] = 512;
possible_ys[1] = 320;
possible_ys[0] = 128;

radius = 70;
var cumul_angle = 190;
var incremental_angle = 40;

summon_x[5] = 0;
summon_y[5] = 0;

for (var i = 0; i < 5; i++)
{
	summon_x[i] = radius * dcos(cumul_angle);
	summon_y[i] = radius * dsin(cumul_angle);
	cumul_angle += incremental_angle;
}

num_bullets_disappear = 50;
disappear_bullet_speed = 2;
cumul_angle = 0;
incremental_angle = 360 / num_bullets_disappear;

disappear_bullets_x[num_bullets_disappear] = 0;
disappear_bullets_y[num_bullets_disappear] = 0;

for (var i = 0; i < num_bullets_disappear; i++)
{
	disappear_bullets_x[i] = dcos(cumul_angle);
	disappear_bullets_y[i] = dsin(cumul_angle);
	
	cumul_angle += incremental_angle;
}

mine_spawning_period = 120;
mine_spawning_counter = 0;

// Advance the state
Phase = LevelTwoPhase.TWO;
