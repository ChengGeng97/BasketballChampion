if(HP == 0)
{
	Phase = LevelThreePhase.TRANSIT_TWO_TO_THREE;
}
else
{
	if (spawning_frame_counter > spawning_frame_period)
	{
		spawning_frame_counter -= spawning_frame_period;

	
		var spawner = instance_create_depth(x, y, 0, Level3Pattern2BulletSpawner);
	
		switch(circle_size)
		{
			case 0:
				spawner.spawn_circle_radius = 50;
				spawner.bullets_per_spawn = 200;
				break;
			
			case 1:
				spawner.spawn_circle_radius = 100;
				spawner.bullets_per_spawn = 200;
				break;
			
			case 2:
				spawner.spawn_circle_radius = 200;
				spawner.bullets_per_spawn = 200;
				break;
		}
	
		circle_size = (circle_size + 1) % 3;
	}

	spawning_frame_counter++;
}
