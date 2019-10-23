if (HP <= 0)
{
	Phase = LevelThreePhase.EXIT_FOUR;
}
else
{
	switch (MeteorPhaseState)
	{
		case Level3MeteorPhase.MOVING:
			if (frame_counter >= moving_state_frames)
			{
				MeteorPhaseState = Level3MeteorPhase.CHARGING;
				frame_counter = 0;
				meteor = instance_create_depth(x, y + 100, 0, BowlingMeteor);
			}
		
			frame_counter++;
	
			if (instance_exists(Player2))
			{
				if (x > Player2.x)
				{
					x -= movement_speed;
				}
				else
				{
					x += movement_speed;
				}
			}

			break;


		case Level3MeteorPhase.CHARGING:
			if (frame_counter >= charging_state_frames)
			{	
				var meteor_dir_x = Player2.x - meteor.x;
				var meteor_dir_y = Player2.y - meteor.y;
			
				var magnitude
					= sqrt(meteor_dir_x * meteor_dir_x + meteor_dir_y * meteor_dir_y);
			
				meteor.direction_x = meteor_dir_x / magnitude;
				meteor.direction_y = meteor_dir_y / magnitude;
			
				meteor.fired = true;
				MeteorPhaseState = Level3MeteorPhase.FIRE;
				frame_counter = 0;
			}
		
			frame_counter++;
		
			break;


		case Level3MeteorPhase.FIRE:
			if (frame_counter >= firing_state_frames)
			{
				MeteorPhaseState = Level3MeteorPhase.MOVING;
				frame_counter = 0;
			}
		
			frame_counter++;
		
			break;
	}
}
