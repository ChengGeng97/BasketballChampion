/// @description Insert description here
// You can write your code in this editor

if (first_time)  {
	x_move_each_step = bullet_speed * x_direction;
	y_move_each_step = bullet_speed * y_direction;
	
	first_time = !first_time;
}


x += x_move_each_step;
y += y_move_each_step;
