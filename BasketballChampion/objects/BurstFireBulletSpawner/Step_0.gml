/// @description Creates new bullets when the period is reached
// You can write your code in this editor

if(in_firing)
{
	if(shots_fired < spawns_per_burst)
	{
		// Increment time elapsed
		frames_elapsed++;

		// If time exceeded
		if (frames_elapsed > spawn_period_frames)
		{
			shots_fired += 1;
	
			// Reset timer
			frames_elapsed -= spawn_period_frames;

			// Spawn new bulllets
			for (i = 0; i < bullets_per_spawn; i++)
			{
				var bullet_id = instance_create_depth(x + spawn_circle_radius * xPositions[i], 
					                                  y + spawn_circle_radius * yPositions[i], 
											          i, 
											          bullet_to_spawn);
		
				// Initialize values for bullet
				bullet_id.x_direction = xPositions[i];
				bullet_id.y_direction = yPositions[i];
				bullet_id.bullet_speed = bullet_speed;
		
		
				// Rotate spawning positions before next spawn
				if (degree_rotate_after_shot != 0)
				{
					var sin_theta = dsin(degree_rotate_after_shot);
					var cos_theta = dcos(degree_rotate_after_shot);
		
					var new_x = xPositions[i] * cos_theta - yPositions[i] * sin_theta;
					var new_y = xPositions[i] * sin_theta + yPositions[i] * cos_theta;
		
					xPositions[i] = new_x;
					yPositions[i] = new_y;
				}
			}
		}
	} 
	else
	{
		in_firing = false;
		frames_until_next_burst = frames_between_burst;
		shots_fired = 0;
	}
}
else
{
	if(frames_until_next_burst <= 0)
	{
		in_firing = true;
	}
	else
	{
		frames_until_next_burst -= 1;
	}
}

