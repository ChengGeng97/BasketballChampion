/// @description Insert description here
// You can write your code in this editor

if (instance_exists(owner_id))
{
	x = owner_id.x;
	y = owner_id.y;	
}


if (first_time)
{
	cumul_angle = 0.0;
	incremental_angle = 360.0 / bullets_per_spawn;
	bullet_ids[bullets_per_spawn] = 0;

	for	(var i = 0; i < bullets_per_spawn; i++)
	{
		var sin_theta = dsin(cumul_angle);
		var cos_theta = dcos(cumul_angle);
		
		bullet_ids[i]
			= instance_create_depth(x + sin_theta * spawn_radius, y + cos_theta * spawn_radius, 0, BowlingBall);
			
		bullet_ids[i].x_disp = sin_theta * spawn_radius;
		bullet_ids[i].y_disp = cos_theta * spawn_radius;
		
		cumul_angle += incremental_angle;
	}

	first_time = false;
}


switch (orbital_state)
{
	case OrbitalSpawnerState.SUMMON:
		if (summon_frame_counter >= summon_frame_max)
		{
			orbital_state = OrbitalSpawnerState.ORBIT;
			sub_spawner_id = instance_create_depth(x, y, 0, Level3Pattern1BulletSpawner);
			sub_spawner_id.owner_id = id;
		}
		summon_frame_counter++;
		break;
	
	case OrbitalSpawnerState.ORBIT:
		if (angle_swept_up > 180)
		{
			total_half_rotations += 1;
			angle_swept_up -= 180;
		}
		
		if (total_half_rotations >= maximum_half_rotations)
		{
			orbital_state = OrbitalSpawnerState.PAUSE;
			instance_destroy(sub_spawner_id);
		}
		else
		{
			angle_swept_up += angle_per_frame;
		
			for (var i = 0; i < bullets_per_spawn; i++)
			{
				// Rotate each object in orbit
				var sin_theta = dsin(angle_per_frame);
				var cos_theta = dcos(angle_per_frame);
		
				var new_x = bullet_ids[i].x_disp * cos_theta - bullet_ids[i].y_disp * sin_theta;
				var new_y = bullet_ids[i].x_disp * sin_theta + bullet_ids[i].y_disp * cos_theta;
			
				bullet_ids[i].x_disp = new_x;
				bullet_ids[i].y_disp = new_y;
			
				bullet_ids[i].x = x + new_x;
				bullet_ids[i].y = y + new_y;
			}
		}
		break;
		
		
	case OrbitalSpawnerState.PAUSE:
		if (pause_frame_counter > pause_frame_max)
		{
			owner_id.PhaseOneState = LevelThreePhaseOneState.ORBITAL_FIRING;
			orbital_state = OrbitalSpawnerState.FIRE;
		}
		pause_frame_counter++;
		break;
		
		
	case OrbitalSpawnerState.FIRE:
		if (fire_frame_counter > frames_between_fire)
		{
			fire_frame_counter -= frames_between_fire;
			
			if (fire_counter < bullets_per_spawn)
			{
				var direction_x = Player2.x - bullet_ids[fire_counter].x;
				var direction_y = Player2.y - bullet_ids[fire_counter].y;
			
				var magnitude = sqrt(direction_x * direction_x + direction_y * direction_y);
			
				bullet_ids[fire_counter].direction_x = direction_x / magnitude;
				bullet_ids[fire_counter].direction_y = direction_y / magnitude;
				bullet_ids[fire_counter].bullet_speed = bullet_speed;
				bullet_ids[fire_counter].fired = true;
			
				fire_counter++;
			}
			else
			{
				orbital_state = OrbitalSpawnerState.DIE;
			}
		}
		
		fire_frame_counter++;
	
		break;
		
	case OrbitalSpawnerState.DIE:
		owner_id.PhaseOneState = LevelThreePhaseOneState.ORBITAL_OFF;
		instance_destroy();
		break;
}
