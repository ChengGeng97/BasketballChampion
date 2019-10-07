/// @description Makes the hitbox follow the player around
// You can write your code in this editor

if (instance_exists(player_id))
{
	x = player_id.x;
	y = player_id.y;
	
	if(frames_before_active > 0)
	{
		frames_before_active -= 1;
	}
}
