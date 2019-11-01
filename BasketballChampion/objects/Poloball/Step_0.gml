/// @description Insert description here
// You can write your code in this editor

if (fired)
{
	x += bullet_speed * direction_x;
	y += bullet_speed * direction_y;
}

if (x < GameManager.x_pad || x > GameManager.x_max_bound || y < GameManager.y_pad || y > GameManager.y_max_bound)
{
	instance_destroy();
}
