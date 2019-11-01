/// @description Insert description here
// You can write your code in this editor

if (fired)
{
	x += bullet_speed * direction_x;
	y += bullet_speed * direction_y;
}


if (x < 0 || x > room_width || y < 0 || y > room_height)
{
	instance_destroy();
}

