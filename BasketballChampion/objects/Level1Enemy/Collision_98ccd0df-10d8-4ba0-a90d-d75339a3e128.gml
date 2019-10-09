/// @description For when you get hit
// You can write your code in this editor

other.x_direction = other.x_direction * (-1);
other.y_direction = other.y_direction * (-1);

HP -= 1;

show_debug_message("Hit");
