/// @description Creates new bullets when the period is reached
if (instance_exists(Level1Enemy)) {
	x = Level1Enemy.x;
	y = Level1Enemy.y;
} else {
	instance_destroy();
}

// Increment time elapsed
frames_elapsed++;

// If time exceeded
if (frames_elapsed > spawn_period_frames && instance_exists(Player2))
{
	// Reset timer
	frames_elapsed -= spawn_period_frames;

	// Spawn new bulllets
	for (i = 0; i < bullets_per_spawn; i++)
	{
		var bullet_id = instance_create_depth(x, y, i, bullet_to_spawn);

		enemy_to_player_vector_x = Player2.x - x;
		enemy_to_player_vector_y = Player2.y - y;

		vector_magnitude = sqrt(enemy_to_player_vector_x * enemy_to_player_vector_x 
									+ enemy_to_player_vector_y * enemy_to_player_vector_y);

		vector_normalised_x = enemy_to_player_vector_x / vector_magnitude;
		vector_normalised_y = enemy_to_player_vector_y / vector_magnitude;
			
		// Initialize values for bullet
		bullet_id.x_direction = vector_normalised_x;
		bullet_id.y_direction = vector_normalised_y;
		bullet_id.bullet_speed = bullet_speed;
		bullet_id.hspeed = vector_normalised_x * bullet_id.bullet_speed;
		bullet_id.vspeed = vector_normalised_y * bullet_id.bullet_speed;

		
		
		// Rotate spawning positions before next spawn
		// if (degree_rotate_after_shot != 0)
		// {
		// 	var sin_theta = dsin(degree_rotate_after_shot);
		// 	var cos_theta = dcos(degree_rotate_after_shot);
		
		// 	var new_x = xPositions[i] * cos_theta - yPositions[i] * sin_theta;
		// 	var new_y = xPositions[i] * sin_theta + yPositions[i] * cos_theta;
		
		// 	xPositions[i] = new_x;
		// 	yPositions[i] = new_y;
		// }
	}
}
