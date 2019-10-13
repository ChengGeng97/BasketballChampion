if (HP < 0) 
{
	Phase = LevelOnePhase.TRANSIT_TWO_TO_THREE;
}
else
{
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
 