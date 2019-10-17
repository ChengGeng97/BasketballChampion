/// @description Update bullet's position
// You can write your code in this editor

if (first_time)  {
	x_move_each_step = bullet_speed * x_direction;
	y_move_each_step = bullet_speed * y_direction;
	
	first_time = !first_time;
}


x += x_move_each_step;
y += y_move_each_step;

var outstep_room_boundary = x > room_width + 5
                           || x < -5
						   || y > room_height + 5
						   || y < -5;

if (outstep_room_boundary) {
	instance_destroy();
}
