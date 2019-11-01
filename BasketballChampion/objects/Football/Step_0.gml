/// @description Makes the ball move around the screen
// You can write your code in this editor

real_ball_speed = ball_speed + real_base_speed;

if (!instance_exists(BlackHoleCore))
{
	if (x > GameManager.x_max_bound)
	{
		x_direction = -x_direction;
	}

	if (x < GameManager.x_pad)
	{
		x_direction = -x_direction;
	}
}
else
{
	if (x > GameManager.x_max_bound + 5)
	{
		DeleteBallReturnControlToPlayer();
	}
	
	if (x < GameManager.x_pad - 5)
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
