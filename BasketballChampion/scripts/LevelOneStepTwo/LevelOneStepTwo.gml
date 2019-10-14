if (HP <= 0) 
{
	Phase = LevelOnePhase.EXIT_TWO;
}
else
{
	x += movement_speed;

	if(x < lower_bound_x || x > upper_bound_x) {
		movement_speed = -movement_speed;
	}


	if(minion_respawn_frame_counter >= minion_respawn_period_frames)
	{
		minion_respawn_frame_counter -= minion_respawn_period_frames;
		
		for (var i = 0; i < number_of_minions; i++)
		{
			if(instance_exists(minions[i]))
			{
				minions[i].minion_state = MinionState.ALIVE;
				minions[i].visible = true;
			}
		}
	}
	
	minion_respawn_frame_counter++;
}
