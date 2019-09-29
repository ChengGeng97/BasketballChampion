/// @description Insert description here
// You can write your code in this editor

if(instance_exists(player_id))
{
	if (invulnerability_frames <= 0)
	{
	instance_destroy(player_id);
	}	
}
