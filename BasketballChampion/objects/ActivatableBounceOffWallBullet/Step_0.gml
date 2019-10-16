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

	if (x > room_width || x < 0)
	{
		x_move_each_step = -x_move_each_step;
	}

	if (y > room_height || y < 0)
	{
		y_move_each_step = -y_move_each_step;
	}

	x += x_move_each_step;
	y += y_move_each_step;
}

