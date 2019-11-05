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


if (x < 0 || x > room_width || y < 0 || y > room_height)
{
	instance_destroy();
}

