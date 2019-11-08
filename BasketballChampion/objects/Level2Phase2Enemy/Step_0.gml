/// @description Insert description here
// You can write your code in this editor

switch (level_two_enemy_state)
{
	case Level2Phase2EnemyState.FIRING:
		if (firing_counter >= firing_period)
		{
			firing_counter = 0;
			
			for (var i = 0; i < bullets_per_spawn; i++)
			{
				var bullet = instance_create_depth(x, y, -1, BasicBullet);
				bullet.x_direction = dir_x[i];
				bullet.y_direction = dir_y[i];
				bullet.bullet_speed = 2;
			}
		}
		firing_counter++;
		break;
		
	case Level2Phase2EnemyState.HIT:
		if (frame_counter >= hit_state_frames)
		{
			frame_counter = 0;
			firing_counter = 0;
			level_two_enemy_state = Level2Phase2EnemyState.DISAPPEAR;
			sprite_index = SpriteHoleSplash;
		}
		frame_counter++;
		break;
		
	case Level2Phase2EnemyState.DISAPPEAR:
		if (frame_counter >= disappear_state_frames)
		{
			frame_counter = 0;
			level_two_enemy_state = Level2Phase2EnemyState.HIDING;
			visible = false;
			
			x = irandom_range(GameManager.x_pad + 100, GameManager.x_max_bound - 100);
		}
		frame_counter++;
		break;
		
	case Level2Phase2EnemyState.HIDING:
		if (frame_counter >= hiding_state_frames)
		{
			frame_counter = 0;
			level_two_enemy_state = Level2Phase2EnemyState.APPEAR;
			y = Player2.y < 200 ? 600 : 96;
			visible = true;
			sprite_index = SpriteEnemyAppear;
		}
		frame_counter++;
		break;
	
	case Level2Phase2EnemyState.APPEAR:
		if (frame_counter >= appear_state_frames)
		{
			frame_counter = 0;
			level_two_enemy_state = Level2Phase2EnemyState.FIRING;
			sprite_index = SpriteEnemyIdle;
		}
		frame_counter++;
		break;
}
