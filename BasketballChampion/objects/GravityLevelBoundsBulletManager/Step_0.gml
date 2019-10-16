/// @description Insert description here
// You can write your code in this editor

if (first_time) 
{
	var cumul_angle = 0.0;
	var incremental_angle = 360 / inner_number_of_balls;
	
	for (var i = 0; i < inner_number_of_balls; i++)
	{
		inner_xPositions[i] = dcos(cumul_angle) * inner_radius;
		inner_yPositions[i] = dsin(cumul_angle) * inner_radius;
		
		cumul_angle += incremental_angle;
		
		inner_circle[i] = instance_create_depth(x + inner_xPositions[i], y + inner_yPositions[i], 0, BigBowlingBall);
	}
	
	
	cumul_angle = 0.0;
	incremental_angle = 360 / outer_number_of_balls;
	
	for(var i = 0; i < outer_number_of_balls; i++)
	{
		outer_xPositions[i] = dcos(cumul_angle) * outer_radius;
		outer_yPositions[i] = dsin(cumul_angle) * outer_radius;
		
		cumul_angle += incremental_angle;
		
		outer_circle[i] = instance_create_depth(x + outer_xPositions[i], y + outer_yPositions[i], 0, BigBowlingBall);
	}
	
	first_time = false;
}



for (var i = 0; i < inner_number_of_balls; i++)
{
	var new_x = inner_xPositions[i] * dcos(inner_step_angle) - inner_yPositions[i] * dsin(inner_step_angle);
	var new_y = inner_xPositions[i] * dsin(inner_step_angle) + inner_yPositions[i] * dcos(inner_step_angle);
	
	inner_xPositions[i] = new_x;
	inner_yPositions[i] = new_y;
	
	inner_circle[i].x = x + new_x;
	inner_circle[i].y = y + new_y;
}

for (var i = 0; i < outer_number_of_balls; i++)
{
	var new_x = outer_xPositions[i] * dcos(outer_step_angle) - outer_yPositions[i] * dsin(outer_step_angle);
	var new_y = outer_xPositions[i] * dsin(outer_step_angle) + outer_yPositions[i] * dcos(outer_step_angle);
	
	outer_xPositions[i] = new_x;
	outer_yPositions[i] = new_y;
	
	outer_circle[i].x = x + new_x;
	outer_circle[i].y = y + new_y;
}

/*
var new_x = bullet_ids[i].x_disp * cos_theta - bullet_ids[i].y_disp * sin_theta;
var new_y = bullet_ids[i].x_disp * sin_theta + bullet_ids[i].y_disp * cos_theta;
*/
