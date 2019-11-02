/// @description Insert description here
// You can write your code in this editor

if (instance_exists(player_id))
{
	if (invulnerability_frames <= 0)
	{
		player_id.player_HP -= 1;
		
		invulnerability_frames = 60;
		show_debug_message("YOU GOT HIT!");
	}
}
