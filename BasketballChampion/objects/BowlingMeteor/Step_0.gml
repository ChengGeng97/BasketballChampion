/// @description Insert description here
// You can write your code in this editor


// Movement
if (fired)
{
	if (first_time)
	{
		var cos_theta = dcos(90);
		var sin_theta = dsin(90);

		orthogonal_vector_x = direction_x * cos_theta - direction_y * sin_theta;
		orthogonal_vector_y = direction_x * sin_theta + direction_y * cos_theta;

		first_time = false;
	}

	
	bullet_speed += acceleration;
	x += bullet_speed * direction_x;
	y += bullet_speed * direction_y;


	// Stepwise Trail Creation
	var magnitude = peak * dsin(total_trail_angle);
	var bullet1
		= instance_create_depth(x + magnitude * orthogonal_vector_x,
							    y + magnitude * orthogonal_vector_y,
								0,
								ActivatableBounceOffWallBullet);
								
	bullet1.bullet_speed = trail_speed;
	bullet1.x_direction = random_range(0, 1);
	bullet1.y_direction = random_range(0, 1);


	var bullet2
		= instance_create_depth(x - magnitude * orthogonal_vector_x,
								y - magnitude * orthogonal_vector_y,
								0,
								ActivatableBounceOffWallBullet);
	
	bullet2.bullet_speed = trail_speed;
	bullet2.x_direction = random_range(-1, 0);
	bullet2.y_direction = random_range(-1, 0);


	total_trail_angle += stepwise_trail_angle;
}


// Boundary Response
if (x < GameManager.x_pad + 50 || x > GameManager.x_max_bound - 50 || y > GameManager.y_max_bound - 50)
{
	if(!hit_wall)
	{
		instance_create_depth(x, y, 0, MeteorWallExplosion);
	}
	hit_wall = true;
}


if (x < GameManager.x_pad - 50 || x > GameManager.x_max_bound + 50 || y < GameManager.y_pad -50 || y > GameManager.y_max_bound + 50)
{
	instance_destroy();
}
