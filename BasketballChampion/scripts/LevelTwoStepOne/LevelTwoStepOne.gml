if (HP <= 0)
{
	Phase = LevelTwoPhase.EXIT_ONE;
}
else
{
	switch (level_two_phase_one_state)
	{
		case LevelTwoPhaseOneState.IDLE:
			if (frame_counter >= idle_state_frames)
			{
				frame_counter = 0;
				level_two_phase_one_state = LevelTwoPhaseOneState.SIGNAL_APPEAR;
			}
			frame_counter++;
			break;


		case LevelTwoPhaseOneState.SIGNAL_APPEAR:
			for (var r = 0; r < rows; r++)
			{
				if (r == character_row)
				{
					if (r % 2 == 0)
					{
						var chosen_index = irandom_range(0, long_r - 1);
						holes[r, chosen_index].phase_one_hole_state = Phase1HoleState.E_SIGNAL_APPEAR;
						holes[r, chosen_index].charge_state_frames = charging_state_frames[r];
						appearing[r] = chosen_index;
					}
					else
					{
						var chosen_index = irandom_range(0, short_r - 1);
						holes[r, chosen_index].phase_one_hole_state = Phase1HoleState.E_SIGNAL_APPEAR;
						holes[r, chosen_index].charge_state_frames = charging_state_frames[r];
						appearing[r] = chosen_index;
					}

				}
				else
				{
					if (r % 2 == 0)
					{
						var chosen_index = irandom_range(0, long_r - 1);
						holes[r, chosen_index].phase_one_hole_state = Phase1HoleState.MOLE_SIGNAL_APPEAR;
						holes[r, chosen_index].charge_state_frames = charging_state_frames[r];
						appearing[r] = chosen_index;
					}
					else
					{
						var chosen_index = irandom_range(0, short_r - 1);
						holes[r, chosen_index].phase_one_hole_state = Phase1HoleState.MOLE_SIGNAL_APPEAR;
						holes[r, chosen_index].charge_state_frames = charging_state_frames[r];
						appearing[r] = chosen_index;
					}
				}
			}
		
			level_two_phase_one_state = LevelTwoPhaseOneState.WAIT;
			break;


		case LevelTwoPhaseOneState.WAIT:
			if (frame_counter >= wait_state_frames)
			{
				frame_counter = 0;
				level_two_phase_one_state = LevelTwoPhaseOneState.SIGNAL_HIDE;
			}
			frame_counter++;
			break;


		case LevelTwoPhaseOneState.SIGNAL_HIDE:
			for (var r = 0; r < rows; r++)
			{
				holes[r, appearing[r]].phase_one_hole_state = Phase1HoleState.SIGNAL_HIDE;
			}
			level_two_phase_one_state = LevelTwoPhaseOneState.IDLE;
			break;
	}

}


