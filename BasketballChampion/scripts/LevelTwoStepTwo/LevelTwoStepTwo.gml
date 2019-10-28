if (HP <= 0)
{
	Phase = LevelTwoPhase.EXIT_TWO;
}
else
{
	switch (level_two_phase_two_state)
	{
		case LevelTwoPhaseTwoState.APPEAR:
			if (frame_counter >= appear_state_frames)
			{
				frame_counter = 0;
				level_two_phase_two_state = LevelTwoPhaseTwoState.CHARGE;
				character.sprite_index = SpriteEnemyCharge;
				
				for (var i = 0; i < 5; i++)
				{
					p_balls[i] = instance_create_depth(character.x + summon_x[i], character.y + summon_y[i], -1, Poloball);
				}
			}
			frame_counter++;
			break;


		case LevelTwoPhaseTwoState.CHARGE:
			if (frame_counter >= charge_state_frames)
			{
				frame_counter = 0;
				level_two_phase_two_state = LevelTwoPhaseTwoState.FIRE;
				character.sprite_index = SpriteEnemyAttack;
			}
			frame_counter++;
			break;


		case LevelTwoPhaseTwoState.FIRE:
			if (frame_counter >= fire_state_frames)
			{
				frame_counter = 0;
				level_two_phase_two_state = LevelTwoPhaseTwoState.PAUSE;
				character.sprite_index = SpriteEnemyIdle;
				
				for (var i = 0; i < 5; i++)
				{
					var target_x = p_balls[2].x + (Player2.x - p_balls[2].x) / 2.5;
					var target_y = p_balls[2].y + (Player2.y - p_balls[2].y) / 2.5;
					
					var vect_x = (target_x - p_balls[i].x);
					var vect_y = (target_y - p_balls[i].y);
					
					var mag = sqrt(vect_x * vect_x + vect_y * vect_y);
					
					var norm_x = vect_x / mag;
					var norm_y = vect_y / mag;
					
					p_balls[i].direction_x = norm_x;
					p_balls[i].direction_y = norm_y;
					
					if (i == 0 || i == 4)
					{
						p_balls[i].bullet_speed = 30;
					}
					else if (i == 1 || i == 3)
					{
						p_balls[i].bullet_speed = 30;
					}
					else
					{
						p_balls[i].bullet_speed = 30;
					}
					
					
					p_balls[i].fired = true;
				}
			}
			frame_counter++;
			break;


		case LevelTwoPhaseTwoState.PAUSE:
			if (frame_counter >= pause_state_frames)
			{
				frame_counter = 0;
				level_two_phase_two_state = LevelTwoPhaseTwoState.DISAPPEAR;
				character.sprite_index = SpriteHoleSplash
			}
			frame_counter++;
			break;


		case LevelTwoPhaseTwoState.DISAPPEAR:
			if (frame_counter >= disappear_state_frames)
			{
				for (var i = 0; i < num_bullets_disappear; i++)
				{
					var bullet = instance_create_depth(character.x, character.y, -1, BasicBullet);
					bullet.x_direction = disappear_bullets_x[i];
					bullet.y_direction = disappear_bullets_y[i];
					bullet.bullet_speed = disappear_bullet_speed;
				}
				
				frame_counter = 0;
				level_two_phase_two_state = LevelTwoPhaseTwoState.HIDDEN;
				character.visible = false;
				
				character.y = choose(possible_ys[0], possible_ys[1], possible_ys[2]);
				character.x = irandom_range(100, 600);
			}
			frame_counter++;
			break;


		case LevelTwoPhaseTwoState.HIDDEN:
			if (frame_counter >= hidden_state_frames)
			{
				frame_counter = 0;
				level_two_phase_two_state = LevelTwoPhaseTwoState.APPEAR;
				character.sprite_index = SpriteEnemyAppear;
				character.visible = true;
			}
			frame_counter++;
			break;
	}
	
	
	
	if (mine_spawning_counter >= mine_spawning_period)
	{
		mine_spawning_counter = 0;
		instance_create_depth(Player2.xprevious, Player2.yprevious, 6, CountdownDisc);
	}
	mine_spawning_counter++;
}


