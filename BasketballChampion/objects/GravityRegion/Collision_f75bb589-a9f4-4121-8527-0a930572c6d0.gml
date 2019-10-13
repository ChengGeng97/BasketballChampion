/// @description Insert description here
// You can write your code in this editor

// Find displacements
var disp_x = x - other.x;
var disp_y = y - other.y;

var distance_squared = disp_x * disp_x + disp_y * disp_y;
var magnitude = sqrt(distance_squared);

var gravity_vector_x = (disp_x / magnitude) / distance_squared * gravitational_factor;
var gravity_vector_y = (disp_y / magnitude) / distance_squared * gravitational_factor;

var new_vector_x = other.ball_speed * other.x_direction + gravity_vector_x;
var new_vector_y = other.ball_speed * other.y_direction + gravity_vector_y;

var new_magnitude = sqrt(new_vector_x * new_vector_x + new_vector_y * new_vector_y);

var new_ball_speed = new_magnitude;
var new_vector_x_direction = new_vector_x / new_magnitude;
var new_vector_y_direction = new_vector_y / new_magnitude;

other.ball_speed = new_ball_speed;
other.x_direction = new_vector_x_direction;
other.y_direction = new_vector_y_direction;
