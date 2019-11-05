/// @description Makes the ball move around the screen
// You can write your code in this editor

if (first_time)
{
	real_ball_speed = ball_speed + real_base_speed;
	first_time = false;
}

if (!instance_exists(BlackHoleCore))
{
	// Most levels
	if (x > GameManager.x_max_bound || x < GameManager.x_pad)
	{
		x_direction = -x_direction;
	}
}
else
{
	// The gravity level
	if (x > GameManager.x_max_bound + 5 || x < GameManager.x_pad - 5)
	{
		DeleteBallReturnControlToPlayer();
	}
}

if (y > GameManager.y_max_bound || y < GameManager.y_pad)
{
	DeleteBallReturnControlToPlayer();
}

x += x_direction * real_ball_speed;
y += y_direction * real_ball_speed;
