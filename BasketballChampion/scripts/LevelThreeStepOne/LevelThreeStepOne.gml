if (HP <= 0)
{
	Phase = LevelThreePhase.EXIT_ONE;
}
else
{	
	switch (PhaseOneState)
	{
		case LevelThreePhaseOneState.ORBITAL_OFF:
			if (orbital_off_frame_counter >= orbital_off_frames_max)
			{
				PhaseOneState = LevelThreePhaseOneState.ORBITAL_SUMMON;
				orbital_off_frame_counter = 0;
			}
			else
			{
				orbital_off_frame_counter++;

				if (instance_exists(Player2))
				{
					if (x < Player2.x)
					{
						x += movement_speed;
					}
					else if (x > Player2.x)
					{
						x -= movement_speed;
					}
				}
			}
			break;


		case LevelThreePhaseOneState.ORBITAL_SUMMON:
			orbital_spawner = instance_create_depth(x, y, 0, Level3Pattern1OrbitalSpawner);
			orbital_spawner.owner_id = id;

			if (HP <= 200)
			{
				orbital_spawner.bullets_per_spawn = 6;
			}
			else if (HP <= 400)
			{
				orbital_spawner.bullets_per_spawn = 5;
			}
			else
			{
				orbital_spawner.bullets_per_spawn = 4;
			}

			PhaseOneState = LevelThreePhaseOneState.ORBITAL_ON;
			break;


		case LevelThreePhaseOneState.ORBITAL_ON:
			if (x < Player2.x)
			{
				x += movement_speed;
			}
			else if (x > Player2.x)
			{
				x -= movement_speed;
			}
			break;


		case LevelThreePhaseOneState.ORBITAL_FIRING:
			// Do nothing
			break;
	}
}
