total_phase_HP = 600;
halfHealth = total_phase_HP / 2;
oneEighthHealth = total_phase_HP / 8;
HP = 600;

// Creates the holes
rows = 5;
heights[0] = GameManager.y_pad + 96;
heights[1] = GameManager.y_pad + 192;
heights[2] = GameManager.y_pad + 288;
heights[3] = GameManager.y_pad + 384;
heights[4] = GameManager.y_pad + 480;

long_r = 4;
lengths_long[0] = GameManager.x_pad + 64;
lengths_long[1] = GameManager.x_pad + 256;
lengths_long[2] = GameManager.x_pad + 448;
lengths_long[3] = GameManager.x_pad + 640;

short_r = 3;
lengths_short[0] = GameManager.x_pad + 160;
lengths_short[1] = GameManager.x_pad + 352;
lengths_short[2] = GameManager.x_pad + 544;

holes[0, 0] = 0;

for (var r = 0; r < rows; r++)
{
	if (r % 2 == 0)
	{
		for (var c = 0; c < long_r; c++)
		{
			holes[r, c] = instance_create_depth(lengths_long[c], heights[r], -1, Level2Phase1Hole);
		}
	}
	else
	{
		for (var c = 0; c < short_r; c++)
		{
			holes[r, c] = instance_create_depth(lengths_short[c], heights[r], -1, Level2Phase1Hole);
		}
	}
}


// Phase variables
enum LevelTwoPhaseOneState
{
	IDLE, SIGNAL_APPEAR, WAIT, SIGNAL_HIDE
}

idle_state_frames = 120;
wait_state_frames = 300;

frame_counter = 0;

level_two_phase_one_state = LevelTwoPhaseOneState.IDLE;

charging_state_frames[0] = 120;
charging_state_frames[1] = 100;
charging_state_frames[2] = 80;
charging_state_frames[3] = 60;
charging_state_frames[4] = 40;

appearing[0] = 0;
appearing[1] = 0;
appearing[2] = 0;
appearing[3] = 0;
appearing[4] = 0;

character_row = rows - 1;

// Advance the state!
Phase = LevelTwoPhase.ONE;
