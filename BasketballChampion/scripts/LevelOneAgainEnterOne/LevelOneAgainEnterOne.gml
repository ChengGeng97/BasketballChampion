HP = 600;

x = 350;
y = 200;

enum LevelOneAgainPhaseOneState
{
	MOVING, CHARGING, FIRE_PAUSE, FIRING
}

level_one_again_state = LevelOneAgainPhaseOneState.MOVING;


frame_counter = 0;


moving_state_frames = 300;
moving_shoot_period = 20;
moving_frame_counter = 0;
movement_speed = 1;
moving_bullet_speed = 5;

charging_state_frames = 60;
tennis_speed = 20;


fire_pause_frames = 30;

firing_state_frames = 30;


Phase = LevelOneAgainPhase.ONE;
