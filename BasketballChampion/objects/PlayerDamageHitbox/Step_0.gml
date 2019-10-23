/// @description Make the hitbox follow the player around
// You can write your code in this editor

if (instance_exists(player_id))
{
	x = player_id.x;
    y = player_id.y;
	
	if (invulnerability_frames > 0) 
	{	
		invulnerability_frames -= 1;
	}
}
