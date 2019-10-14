/// @description Insert description here
// You can write your code in this editor

/// @description Creates new bullets when the period is reached
x = owner_id.x;
y = owner_id.y;

// Increment time elapsed
frames_elapsed++;

// If time exceeded
if (frames_elapsed > spawn_period_frames && instance_exists(Player2))
{
	// Reset timer
	frames_elapsed -= spawn_period_frames;

	// Spawn new bulllets
	for (i = 1; i <= bullets_per_spawn; i++)
	{
		var bullet_id = instance_create_depth(x, y, i, BasicBullet);

		// Calculate angle of deviation from original bullet path
		scatter_angle = scatter_angle_per_bullet * power(-1, i) * floor(i / 2);

		enemy_to_player_vector_x = Player2.x - x;
		enemy_to_player_vector_y = Player2.y - y;

		vector_magnitude = sqrt(enemy_to_player_vector_x * enemy_to_player_vector_x 
									+ enemy_to_player_vector_y * enemy_to_player_vector_y);

		vector_normalised_x = enemy_to_player_vector_x / vector_magnitude;
		vector_normalised_y = enemy_to_player_vector_y / vector_magnitude;

		// Rotate spawning positions before next spawn
		if (scatter_angle != 0)
		{
			var sin_theta = dsin(scatter_angle);
			var cos_theta = dcos(scatter_angle);

			var new_x = vector_normalised_x * cos_theta - vector_normalised_y * sin_theta;
			var new_y = vector_normalised_x * sin_theta + vector_normalised_y * cos_theta;

			vector_normalised_x = new_x;
			vector_normalised_y = new_y;
		}

		// Initialize values for bullet
		bullet_id.x_direction = vector_normalised_x;
		bullet_id.y_direction = vector_normalised_y;
		bullet_id.bullet_speed = bullet_speed;
		bullet_id.hspeed = vector_normalised_x * bullet_id.bullet_speed;
		bullet_id.vspeed = vector_normalised_y * bullet_id.bullet_speed;
	}
}