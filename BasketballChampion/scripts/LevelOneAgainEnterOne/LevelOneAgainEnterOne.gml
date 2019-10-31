totalHP = 700;
HP = 700;
sprite_index = SpriteLevel1EnemyIdle;

x = 350;
y = 200;

enum LevelOneAgainPhaseOneState
{
	MOVING, CHARGING, FIRE_PAUSE, FIRING, PRE_START
}

level_one_again_state = LevelOneAgainPhaseOneState.PRE_START;


frame_counter = 0;


moving_state_frames = 300;
moving_shoot_period = 40;
moving_frame_counter = 0;
movement_speed = 1;
moving_bullet_speed = 3;

buffered_moving_state_frames = 300;
buffered_moving_shoot_period = 40;
buffered_moving_bullet_speed = 3;

charging_state_frames = 80;
tennis_speed = 20;


fire_pause_frames = 30;

firing_state_frames = 30;

pre_start_frames = 30;


Phase = LevelOneAgainPhase.ONE;
