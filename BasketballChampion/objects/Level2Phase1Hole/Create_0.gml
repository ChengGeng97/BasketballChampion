/// @description Insert description here
// You can write your code in this editor

depth = 6;

enum Phase1HoleState {
	EMPTY,
	SIGNAL_HIDE,
	HIDE,
	
	MOLE_SIGNAL_APPEAR,
	MOLE_APPEAR,
	MOLE_CHARGE,
	MOLE_ATTACK,
	MOLE_IDLE,
	MOLE_HIT,
	
	E_SIGNAL_APPEAR,
	E_APPEAR,
	E_CHARGE,
	E_ATTACK,
	E_IDLE,
	E_HIT
}

phase_one_hole_state = Phase1HoleState.EMPTY;


frame_counter = 0;
appear_state_frames = 18;
charge_state_frames = 60;
attack_state_frames = 15;
hide_state_frames = 10;

num_bullets_on_hide = 30;
dir_x[num_bullets_on_hide] = 0;
dir_y[num_bullets_on_hide] = 0;
hide_bullet_speed = 4;

var incremental_angle = 360 / num_bullets_on_hide;
var cumul_angle = 0.0;

for (var i = 0; i < num_bullets_on_hide; i++)
{
	dir_x[i] = dcos(cumul_angle);
	dir_y[i] = dsin(cumul_angle);
	
	cumul_angle += incremental_angle;
}

got_hit = false;
