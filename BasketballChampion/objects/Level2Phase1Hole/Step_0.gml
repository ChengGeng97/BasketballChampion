/// @description Insert description here
// You can write your code in this editor

switch (phase_one_hole_state)
{
	// General states
	case Phase1HoleState.EMPTY:
		// Wait for signal to appear
		break;
	
	case Phase1HoleState.SIGNAL_HIDE:
		phase_one_hole_state = Phase1HoleState.HIDE;
		sprite_index = SpriteHoleSplash;
		
		var bullet_to_spawn;
		
		if (got_hit)
		{
			bullet_to_spawn = BasicBullet;
			got_hit = false;
		}
		else
		{
			bullet_to_spawn = UnclearableBullet;
			got_hit = false;
		}
		
		for (var i = 0; i < num_bullets_on_hide; i++)
		{
			var bullet = instance_create_depth(x, y, -1, bullet_to_spawn);
			bullet.x_direction = dir_x[i];
			bullet.y_direction = dir_y[i];
			bullet.bullet_speed = hide_bullet_speed;
		}
		break;
	
	case Phase1HoleState.HIDE:
		if (frame_counter >= hide_state_frames)
		{
			phase_one_hole_state = Phase1HoleState.EMPTY;
			sprite_index = SpriteHole;
		}
		frame_counter++;
		break;



	// Mole states
	case Phase1HoleState.MOLE_SIGNAL_APPEAR:
		phase_one_hole_state = Phase1HoleState.MOLE_APPEAR;
		sprite_index = SpriteMoleAppear;
		break;


	case Phase1HoleState.MOLE_APPEAR:
		if (frame_counter >= appear_state_frames)
		{
			p_ball = instance_create_depth(x, y - 40, -1, Poloball);
			phase_one_hole_state = Phase1HoleState.MOLE_CHARGE;
			sprite_index = SpriteMoleCharge;
			frame_counter = 0;
		}
		frame_counter++;
		break;


	case Phase1HoleState.MOLE_CHARGE:
		if (frame_counter >= charge_state_frames)
		{
			phase_one_hole_state = Phase1HoleState.MOLE_ATTACK;
			sprite_index = SpriteMoleAttack;
			frame_counter = 0;
		}
		frame_counter++;
		break;


	case Phase1HoleState.MOLE_ATTACK:
		if (frame_counter >= attack_state_frames)
		{
			var vector_x = Player2.x - p_ball.x;
			var vector_y = Player2.y - p_ball.y;
			
			var magnitude = sqrt(vector_x * vector_x + vector_y * vector_y);
			
			var norm_x = vector_x / magnitude;
			var norm_y = vector_y / magnitude;
			
			p_ball.direction_x = norm_x;
			p_ball.direction_y = norm_y;
			p_ball.bullet_speed = polo_ball_speed;
			p_ball.fired = true;
			
			phase_one_hole_state = Phase1HoleState.MOLE_IDLE;
			sprite_index = SpriteMoleIdle;
			frame_counter = 0;
		}
		frame_counter++;
		break;
		
	case Phase1HoleState.MOLE_IDLE:
		// Wait for manager's signal to disappear
		break;
		
	case Phase1HoleState.MOLE_HIT:
		// Wait for manager's signal to disappear
		break;
		
		
	// Character States
	case Phase1HoleState.E_SIGNAL_APPEAR:
		phase_one_hole_state = Phase1HoleState.E_APPEAR;
		sprite_index = SpriteEnemyAppear;
		break;
		
	case Phase1HoleState.E_APPEAR:
		if (frame_counter >= appear_state_frames)
		{
			p_ball = instance_create_depth(x, y - 40, -1, Poloball);
			phase_one_hole_state = Phase1HoleState.E_CHARGE;
			sprite_index = SpriteEnemyCharge;
			frame_counter = 0;
		}
		frame_counter++;
		break;
		
	case Phase1HoleState.E_CHARGE:
		if (frame_counter >= charge_state_frames)
		{
			phase_one_hole_state = Phase1HoleState.E_ATTACK;
			sprite_index = SpriteEnemyAttack;
			frame_counter = 0;
		}
		frame_counter++;
		break;
		
	case Phase1HoleState.E_ATTACK:
		if (frame_counter >= attack_state_frames)
		{
			var vector_x = Player2.x - p_ball.x;
			var vector_y = Player2.y - p_ball.y;
			
			var magnitude = sqrt(vector_x * vector_x + vector_y * vector_y);
			
			var norm_x = vector_x / magnitude;
			var norm_y = vector_y / magnitude;
			
			p_ball.direction_x = norm_x;
			p_ball.direction_y = norm_y;
			p_ball.bullet_speed = polo_ball_speed;
			p_ball.fired = true;
			
			phase_one_hole_state = Phase1HoleState.E_IDLE;
			sprite_index = SpriteEnemyIdle;
			frame_counter = 0;
		}
		frame_counter++;
		break;
		
	case Phase1HoleState.E_IDLE:
		// Wait for manager's signal to disappear
		break;
		
	case Phase1HoleState.E_HIT:
		// Wait for manager's signal to disappear
		break;
}