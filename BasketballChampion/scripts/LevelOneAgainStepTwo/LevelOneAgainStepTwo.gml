if (HP <= 0)
{
	
}
else
{
	switch (level_one_again_state)
	{
		case LevelOneAgainPhaseTwoState.PREPARE_SPIRAL:
			var vector_x = Player2.x - x;
			var vector_y = Player2.y - y;
			
			var magnitude = sqrt(vector_x * vector_x + vector_y * vector_y);
			
			var norm_x = vector_x / magnitude;
			var norm_y = vector_y / magnitude;
			
			vect_1_x = norm_x;
			vect_1_y = norm_y;
			
			vect_2_x = norm_x;
			vect_2_y = norm_y;

			level_one_again_state = LevelOneAgainPhaseTwoState.SPIRAL;
			break;
			
			
		case LevelOneAgainPhaseTwoState.SPIRAL:
			if (frame_counter >= spiral_state_frames)
			{
				level_one_again_state = LevelOneAgainPhaseTwoState.SPIRAL_PAUSE;
				frame_counter = 0;
			}
			
			var bullet1 = instance_create_depth(x, y, -2, UnclearableBullet);
			bullet1.x_direction = vect_1_x;
			bullet1.y_direction = vect_1_y;
			bullet1.bullet_speed = spiral_speed;
			
			var bullet2 = instance_create_depth(x, y, -2, BasicBullet);
			bullet2.x_direction = vect_2_x;
			bullet2.y_direction = vect_2_y;
			bullet2.bullet_speed = spiral_speed;
			
			var new_x_1 = vect_1_x * dcos(angle_rot_step) - vect_1_y * dsin(angle_rot_step);
			var new_y_1 = vect_1_x * dsin(angle_rot_step) + vect_1_y * dcos(angle_rot_step);
			
			vect_1_x = new_x_1;
			vect_1_y = new_y_1;
			
			var new_x_2 = vect_2_x * dcos(-angle_rot_step) - vect_2_y * dsin(-angle_rot_step);
			var new_y_2 = vect_2_x * dsin(-angle_rot_step) + vect_2_y * dcos(-angle_rot_step);
			
			vect_2_x = new_x_2;
			vect_2_y = new_y_2;
			
			frame_counter++;
			break;


		case LevelOneAgainPhaseTwoState.SPIRAL_PAUSE:
			if(frame_counter >= spiral_pause_frames)
			{
				frame_counter = 0;
				level_one_again_state = LevelOneAgainPhaseTwoState.MOVING;
			}
			
			frame_counter++;
			break;


		case LevelOneAgainPhaseTwoState.MOVING:
			if (frame_counter >= moving_spiral_frames)
			{
				frame_counter = 0;
				moving_shoot_counter = 0;
				level_one_again_state = LevelOneAgainPhaseTwoState.CHARGE;
				
				tennis_ball = instance_create_depth(x, y, -2, TennisBall);
			}
			
			if (moving_shoot_counter >= moving_shoot_period)
			{
				
				var vector_x = Player2.x - x;
				var vector_y = Player2.y - y;
			
				var magnitude = sqrt(vector_x * vector_x + vector_y * vector_y);
			
				var bullet = instance_create_depth(x, y, -2, UnclearableBullet);
			
				bullet.x_direction = vector_x / magnitude;
				bullet.y_direction = vector_y / magnitude;
				bullet.bullet_speed = moving_bullet_speed;
				moving_shoot_counter = 0;
			}
			
			x += movement_speed;
			
			if (x < low_bounds || x > high_bounds)
			{
				movement_speed = -movement_speed;
			}
			
			frame_counter++;
			moving_shoot_counter++;
			break;


		case LevelOneAgainPhaseTwoState.CHARGE:
			if (frame_counter >= charging_frames)
			{
				var vector_x = Player2.x - x;
				var vector_y = Player2.y - y;
			
				var magnitude = sqrt(vector_x * vector_x + vector_y * vector_y);
				
				tennis_ball.direction_x = vector_x / magnitude;
				tennis_ball.direction_y = vector_y / magnitude;
				
				tennis_ball.bullet_speed = tennis_ball_speed;
				tennis_ball.fired = true;
				frame_counter = 0;
				
				level_one_again_state = LevelOneAgainPhaseTwoState.FIRE_PAUSE;
			}
			frame_counter++;
			break;


		case LevelOneAgainPhaseTwoState.FIRE_PAUSE:
			if (frame_counter >= fire_pause_frames)
			{
				frame_counter = 0;
				level_one_again_state = LevelOneAgainPhaseTwoState.PREPARE_SPIRAL;
			}
			frame_counter++;
			break;
			
		case LevelOneAgainPhaseTwoState.BATTLE_START:
			if (frame_counter >= battle_start_frames)
			{
				frame_counter = 0;
				level_one_again_state = LevelOneAgainPhaseTwoState.PREPARE_SPIRAL;
			}
			frame_counter++;
			break;
	}
}
