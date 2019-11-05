/// @description Insert description here
// You can write your code in this editor

if (fired)
{
	if (real_bullet_speed < bullet_speed)
	{
		if (real_bullet_speed + 5 > bullet_speed)
		{
			real_bullet_speed = bullet_speed;
		}
		else
		{
			real_bullet_speed += 5;
		}
	}
	
	x += real_bullet_speed * direction_x;
	y += real_bullet_speed * direction_y;
}

if (x < GameManager.x_pad || x > GameManager.x_max_bound || y < GameManager.y_pad || y > GameManager.y_max_bound)
{
	instance_destroy();
}
