/// @description For when the player gets hit by a bullet
// You can write your code in this editor

if(instance_exists(player_id))
{
	if (invulnerability_frames <= 0)
	{
		instance_destroy(player_id);
	}	
}
