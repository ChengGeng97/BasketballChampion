/// @description Insert description here
// You can write your code in this editor

if (first_time)
{
	var cumul_angle = 0.0;
	var incremental_angle = 360 / possible_spawn_points;
	
	for (var i = 0; i < possible_spawn_points; i++)
	{
		spawnPositionsX[i] = dsin(cumul_angle);
		spawnPositionsY[i] = dcos(cumul_angle);
		
		cumul_angle += incremental_angle;
	}
	
	first_time = false;
}

if (spawn_frames_counter >= spawn_period)
{
	for(var i = 0; i < bullets_per_spawn; i++)
	{
		var chosen_index = irandom_range(1, possible_spawn_points) - 1;
	
		var bullet = instance_create_depth(x + spawn_circle_radius * spawnPositionsX[chosen_index],
		                                   y + spawn_circle_radius * spawnPositionsY[chosen_index],
							               -1,
							               DieWhenHitBlackHoleBullet);
									   
		bullet.x_direction = -spawnPositionsX[chosen_index];
		bullet.y_direction = -spawnPositionsY[chosen_index];
		bullet.bullet_speed = random_range(bullet_speed_min, bullet_speed_max);
	
		spawn_frames_counter -= spawn_period;
	}
}

spawn_frames_counter++;
