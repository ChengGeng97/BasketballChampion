/// @description Insert description here
// You can write your code in this editor

x += x_direction * absolute_speeds[speed_counter];
y += y_direction * absolute_speeds[speed_counter];

if (x > room_width)
{
	x_direction = -x_direction;
}

if (x < 0)
{
	x_direction = -x_direction;
}

if (y > room_height)
{
	y_direction = -y_direction;
}

if (y < 0)
{
	y_direction = -y_direction;
}
