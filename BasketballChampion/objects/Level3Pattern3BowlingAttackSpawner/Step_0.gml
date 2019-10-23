/// @description Insert description here
// You can write your code in this editor

switch (Phase)
{
	case BowlingAttackState.CREATE:
		bowling_ball_id = instance_create_depth(x, y - 50, 0, BowlingBall);
		Phase = BowlingAttackState.PAUSE;
		break;
		
		
	case BowlingAttackState.PAUSE:
		if (frame_counter >= pause_frames)
		{
			frame_counter = 0;
			Phase = BowlingAttackState.CALCULATE;
		}
		frame_counter++;
		break;
	
	
	case BowlingAttackState.CALCULATE:
		if (instance_exists(Player2))
		{
			var vector_x = Player2.x - bowling_ball_id.x;
			var vector_y = Player2.y - bowling_ball_id.y;
			var magnitude = sqrt(vector_x * vector_x + vector_y * vector_y);
			
			direction_x = vector_x / magnitude;
			direction_y = vector_y / magnitude;
		}
		
		Phase = BowlingAttackState.SHOOT;
		break;


	case BowlingAttackState.SHOOT:
		bowling_ball_id.bullet_speed = bullet_speed;
		bowling_ball_id.direction_x = direction_x;
		bowling_ball_id.direction_y = direction_y;
		bowling_ball_id.fired = true;
		
		instance_destroy();
		break;
}
