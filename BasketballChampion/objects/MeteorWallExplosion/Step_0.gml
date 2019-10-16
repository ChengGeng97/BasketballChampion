/// @description Insert description here
// You can write your code in this editor

var cumul_angle = 0.0;
var incremental_angle = 360 / bullets_per_spawn;

for (var i = 0; i < bullets_per_spawn; i++)
{
	var sin_theta = dsin(cumul_angle);
	var cos_theta = dcos(cumul_angle);
	
	var x_pos = x + spawn_radius * cos_theta;
	var y_pos = y + spawn_radius * sin_theta;
	
	if (!(x_pos < 0 || x_pos > room_width || y_pos > room_height))
	{
		var bullet = instance_create_depth(x_pos, y_pos, 0, ActivatableBounceOffWallBullet);
	
		bullet.x_direction = cos_theta;
		bullet.y_direction = sin_theta;
		bullet.bullet_speed = bullet_speed;
	}
	
	cumul_angle += incremental_angle;
}


if (instance_exists(ActivatableBounceOffWallBullet))
{
	ActivatableBounceOffWallBullet.activated = true;
}


instance_destroy();
