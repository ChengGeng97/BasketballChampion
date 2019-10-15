/// @description Insert description here
// You can write your code in this editor

if (instance_exists(owner_id))
{
	x = owner_id.x;
	y = owner_id.y;
}

if (first_time)
{
	var cumul_angle = 0.0;
	var incremental_angle = 360 / possible_spawn_points;
	
	var sin_theta = dsin(angle_to_rotate_vector);
	var cos_theta = dcos(angle_to_rotate_vector);
	
	for (var i = 0; i < possible_spawn_points; i++)
	{
		xPositions[i] = dsin(cumul_angle);
		yPositions[i] = dcos(cumul_angle);
		cumul_angle += incremental_angle;
		
		x_vector_of_bullet_at_index[i]
			= xPositions[i] * cos_theta - yPositions[i] * sin_theta;
			
		y_vector_of_bullet_at_index[i]
			= xPositions[i] * sin_theta + yPositions[i] * cos_theta;
	}
	
	first_time = false;
	
	step_angle_sin = dsin(angle_rotate_per_spawn);
	step_angle_cos = dcos(angle_rotate_per_spawn);
}


if (counter >= possible_spawn_points)
{
	counter = 0;
}

var bullet
	= instance_create_depth(x + spawn_radius * xPositions[counter],
						    y + spawn_radius * yPositions[counter],
							0,
							BasicBullet);

bullet.bullet_speed = bullet_speed;
bullet.x_direction = x_vector_of_bullet_at_index[counter];
bullet.y_direction = y_vector_of_bullet_at_index[counter];

var new_x = xPositions[counter] * step_angle_cos - yPositions[counter] * step_angle_sin;
var new_y = xPositions[counter] * step_angle_sin + yPositions[counter] * step_angle_cos;

xPositions[counter] = new_x;
yPositions[counter] = new_y;

counter++;
