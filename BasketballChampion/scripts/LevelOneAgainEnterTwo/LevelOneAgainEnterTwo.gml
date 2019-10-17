HP = 400;

x = 350;
y = 200;

enum LevelOneAgainPhaseTwoState
{
	PREPARE_SPIRAL, SPIRAL, SPIRAL_PAUSE, MOVING, CHARGE, FIRE_PAUSE, BATTLE_START
}

level_one_again_state = LevelOneAgainPhaseTwoState.BATTLE_START;

frame_counter = 0;

// Prepare Spiral
vect_1_x = 0;
vect_1_y = 0;

vect_2_x = 0;
vect_2_y = 0;


// Spiral
spiral_state_frames = 145;
angle_rot_step = 5;
spiral_speed = 6;

// Spiral Pause
spiral_pause_frames = 120;


// Moving
movement_speed = 1;
moving_spiral_frames = 120;
moving_bullet_speed = 5;
moving_shoot_period = 10;
moving_shoot_counter = 0;
low_bounds = 200;
high_bounds = 500;


// Charge
charging_frames = 80;
tennis_ball_speed = 25;


// Fire Pause
fire_pause_frames = 30;


// Battle-Start
battle_start_frames = 60;


instance_create_depth(350, 450, 0, TennisNet);

Phase = LevelOneAgainPhase.TWO;

