/// @description Insert description here
// You can write your code in this editor

if(instance_exists(owner_id))
{
	x = owner_id.x;
	y = owner_id.y;
}

if(shooting_period_counter >= shooting_period_frames)
{
	shooting_period_counter -= shooting_period_frames;
	
	if(instance_exists(Player2))
	{
		var player_x = Player2.x;
		var player_y = Player2.y;
	
		var vector_x = player_x - x;
		var vector_y = player_y - y;
	
		var vector_magnitude = sqrt(vector_x * vector_x + vector_y * vector_y);
		
		// Shoot the bullet
		var bullet = instance_create_depth(x, y, 0, BasicBullet);
		bullet.bullet_speed = bullet_speed;
		bullet.x_direction = vector_x / vector_magnitude;
		bullet.y_direction = vector_y / vector_magnitude;
	}

}

shooting_period_counter += 1;
