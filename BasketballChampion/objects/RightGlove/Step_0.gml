/// @description Insert description here
// You can write your code in this editor

switch (glove_state)
{
	case GloveState.IDLE:
		break;
		
	case GloveState.COMPUTE_DIR:
		sprite_index = SpriteRightGloveFire;
		var vect_x = Player2.x - x;
		var vect_y = Player2.y - y;
		var mag = sqrt(vect_x * vect_x + vect_y * vect_y);
		
		var norm_x = vect_x / mag;
		var norm_y = vect_y / mag;
		
		direction_x = norm_x;
		direction_y = norm_y;
		cur_speed = 0;
		max_speed = 40;
		accel = 1;
		
		glove_state = GloveState.FIRE;
		
		break;
		
	case GloveState.FIRE:
		if (cur_speed + accel > max_speed)
		{
			cur_speed = max_speed;
		}
		else
		{
			cur_speed += accel;
		}
		
		x += cur_speed * direction_x;
		y += cur_speed * direction_y;
		
		
		if (x < GameManager.x_pad - Level2OldMole.selfdestruct_bounds
			|| y < GameManager.y_pad - Level2OldMole.selfdestruct_bounds
			|| x > GameManager.x_max_bound + Level2OldMole.selfdestruct_bounds
			|| y > GameManager.y_max_bound + Level2OldMole.selfdestruct_bounds)
		{
			Level2OldMole.right_glove = instance_create_depth(0, 0, 0, RightGlove);
			instance_destroy();
		}
		
		break;
}
