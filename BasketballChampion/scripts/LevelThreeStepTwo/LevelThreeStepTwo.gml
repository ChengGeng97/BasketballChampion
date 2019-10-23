if(HP <= 0)
{
	Phase = LevelThreePhase.EXIT_TWO;
}
else
{
	if(spawning_frame_counter > spawning_frame_period)
	{
		spawning_frame_counter -= spawning_frame_period;
		
		var spawner = instance_create_depth(x, y, -1, Level3Pattern2BulletSpawner);
		spawner.bullets_per_spawn = 100;
		
		switch(circle_size)
		{
			case 0:
				spawner.spawn_radius = 50;
				break;
			
			case 1:
				spawner.spawn_radius = 100;
				break;
			
			case 2:
				spawner.spawn_radius = 200;
				break;
		}
		
		circle_size = (circle_size + 1) % 3;
	}
	
	spawning_frame_counter++;
}
