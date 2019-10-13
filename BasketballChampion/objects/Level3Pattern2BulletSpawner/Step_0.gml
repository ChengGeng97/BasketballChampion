/// @description Insert description here
// You can write your code in this editor

if (first_time)
{
	// Pre-calculate spawning coordinates
	//[bullets_per_spawn] = 0;
	//yPositions[bullets_per_spawn] = 0;

	cumul_angle = 0.0;
	incremental_angle = 360.0 / bullets_per_spawn;

	bullet_ids[bullets_per_spawn] = 0;
	first_time = false;

}


switch (spawner_state) 
{
	case Level3Pattern2SpawnerState.SPAWNING:
		if (counter < bullets_per_spawn)
		{
			var cos_theta = dcos(cumul_angle);
			var sin_theta = dsin(cumul_angle);
			
			position_x = spawn_circle_radius * cos_theta;
			position_y = spawn_circle_radius * sin_theta;
			
			// One side
			bullet_ids[counter] 
				= instance_create_depth(x + position_x,
					                    y + position_y,
							      		0,
										BasicBullet);
										
			bullet_ids[counter].x_direction = -cos_theta;
			bullet_ids[counter].y_direction = -sin_theta;
			bullet_ids[counter].first_time = false;
			
			counter++;
			
			// Opposite side
			bullet_ids[counter]
			    = instance_create_depth(x - position_x,
										y - position_y,
										0,
										BasicBullet);
			bullet_ids[counter].x_direction = cos_theta;
			bullet_ids[counter].y_direction = sin_theta;
			bullet_ids[counter].first_time = false;

			// Update state
			cumul_angle += incremental_angle;
			counter++;
		}
		else
		{
			spawner_state = Level3Pattern2SpawnerState.FIRE;
		}

		break;
		
	case Level3Pattern2SpawnerState.FIRE:
		for(var i = 0; i < bullets_per_spawn; i++)
		{
			var bullet = bullet_ids[i];
			
			if (instance_exists(bullet))
			{
				bullet.bullet_speed = 2;
				bullet.first_time = true;
			}
		}
		
		spawner_state = Level3Pattern2SpawnerState.DIE;
		break;
	
	case Level3Pattern2SpawnerState.DIE:
		instance_destroy();
		break;
}
