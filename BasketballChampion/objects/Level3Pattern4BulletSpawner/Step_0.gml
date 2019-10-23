/// @description Insert description here
// You can write your code in this editor

if(first_time)
{
	xPositions[bullets_per_spawn] = 0;
	yPositions[bullets_per_spawn] = 0;
	
	cumul_angle = 0.0;
	incremental_angle = 360 / bullets_per_spawn;
	
	for(var i = 0; i < bullets_per_spawn; i++)
	{
		xPositions[i] = dcos(cumul_angle);
		yPositions[i] = dsin(cumul_angle);
		
		cumul_angle += incremental_angle;
	}
	
	first_time = false;
}
else
{
	if (frame_counter > period_frames)
	{
		frame_counter -= period_frames;
		
		for (var i = 0; i < bullets_per_spawn; i++)
		{
			var bullet = instance_create_depth(x, y, -1, BasicBullet);
			bullet.x_direction = xPositions[i];
			bullet.y_direction = yPositions[i];
			bullet.bullet_speed = bullet_speed;
			
			var new_x = xPositions[i] * dcos(angle_step) - yPositions[i] * dsin(angle_step);
			var new_y = xPositions[i] * dsin(angle_step) + yPositions[i] * dcos(angle_step);
			
			xPositions[i] = new_x;
			yPositions[i] = new_y;
		}
	}
	
	frame_counter++;
}
