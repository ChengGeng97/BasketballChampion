/// @description Insert description here
// You can write your code in this editor

if (activated)
{
	if (first_time)
	{
		x_move_each_step = bullet_speed * x_direction;
		y_move_each_step = bullet_speed * y_direction;
	
		first_time = false;
	}

	clamp(x, 0, room_width);
	clamp(y, 0, room_height);

	if (x > GameManager.x_max_bound || x < GameManager.x_pad)
	{
		x_move_each_step = -x_move_each_step;
	}

	if (y > GameManager.y_max_bound || y < GameManager.y_pad)
	{
		y_move_each_step = -y_move_each_step;
	}

	x += x_move_each_step;
	y += y_move_each_step;
}


if (x > (GameManager.x_max_bound + 2) || x < (GameManager.x_pad - 2))
{
	instance_destroy();
}
	
if (y > (GameManager.y_max_bound + 2) || y < (GameManager.y_pad - 2))
{
	instance_destroy();
}
