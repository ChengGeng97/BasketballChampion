if (HP <= 0)
{
	Phase = LevelOneAgainPhase.EXIT_ONE;
}
else
{
	switch (level_one_again_state)
	{
		case LevelOneAgainPhaseOneState.MOVING:
			if (frame_counter >= moving_state_frames)
			{
				frame_counter = 0;
				moving_frame_counter = 0;
				level_one_again_state = LevelOneAgainPhaseOneState.CHARGING;
			}
			
			if (moving_frame_counter >= moving_shoot_period)
			{
				moving_frame_counter -= moving_shoot_period;
				
				if (instance_exists(Player2))
				{
					var vector_x = Player2.x - x;
					var vector_y = Player2.y - y;
					
					var magnitude = sqrt(vector_x * vector_x + vector_y * vector_y);
					
					var norm_x = vector_x / magnitude;
					var norm_y = vector_y / magnitude;
					
					for (var i = 0; i < 3; i++)
					{
						var scatter_angle = irandom_range(-10, 10);
					
						var rot_x = norm_x * dcos(scatter_angle) - norm_y * dsin(scatter_angle);
						var rot_y = norm_x * dsin(scatter_angle) + norm_y * dcos(scatter_angle);
					
						var bullet = instance_create_depth(x, y, -1, BasicBullet);
						bullet.x_direction = rot_x;
						bullet.y_direction = rot_y;
						bullet.bullet_speed = moving_bullet_speed;
					}
					
					var unclearable = instance_create_depth(x, y, -2, UnclearableBullet);
					unclearable.x_direction = norm_x;
					unclearable.y_direction = norm_y;
					unclearable.bullet_speed = moving_bullet_speed;
				}
			}
			
			if (Player2.x > x)
			{
				x += movement_speed;
			}
			else
			{
				x -= movement_speed;
			}
			
			moving_frame_counter++;
			frame_counter++;
			break;


		case LevelOneAgainPhaseOneState.CHARGING:
			if (frame_counter >= charging_state_frames)
			{
				sprite_index = SpriteLevel1EnemySummon;
				frame_counter = 0;
				level_one_again_state = LevelOneAgainPhaseOneState.FIRE_PAUSE;
				
				t_ball = instance_create_depth(x + 20, y - 75, -1, TennisBall);

			}
			frame_counter++;
			break;


		case LevelOneAgainPhaseOneState.FIRE_PAUSE:
			if(frame_counter >= fire_pause_frames)
			{
				var vector_x = Player2.x - t_ball.x;
				var vector_y = Player2.y - t_ball.y;				
				
				var magnitude = sqrt(vector_x * vector_x + vector_y * vector_y);
					
				var norm_x = vector_x / magnitude;
				var norm_y = vector_y / magnitude;
				
				t_ball.bullet_speed = tennis_speed;
				t_ball.direction_x = norm_x;
				t_ball.direction_y = norm_y;
				
				t_ball.fired = true;
				level_one_again_state = LevelOneAgainPhaseOneState.FIRING;
			}
			
			frame_counter++;
			break;
			

		case LevelOneAgainPhaseOneState.FIRING:
			if (frame_counter >= firing_state_frames)
			{
				sprite_index = SpriteLevel1EnemyIdle;
				frame_counter = 0;
				level_one_again_state = LevelOneAgainPhaseOneState.MOVING;
				
				moving_state_frames = buffered_moving_state_frames;
				moving_shoot_period = buffered_moving_shoot_period;
				moving_bullet_speed = buffered_moving_bullet_speed;
			}
			frame_counter++;
			break;
			
		case LevelOneAgainPhaseOneState.PRE_START:
			if (frame_counter >= pre_start_frames)
			{
				frame_counter = 0;
				level_one_again_state = LevelOneAgainPhaseOneState.MOVING;
			}
			frame_counter++;
			break;
	}

}
