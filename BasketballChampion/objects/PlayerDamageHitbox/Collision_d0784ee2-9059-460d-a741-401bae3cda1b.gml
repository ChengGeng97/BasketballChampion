/// @description Insert description here
// You can write your code in this editor

if (instance_exists(player_id))
{
	if (invulnerability_frames <= 0)
	{
		if (player_id.player_lives == 3) {
			player_id.player_HP_3 -= 1;
		}
		if (player_id.player_lives == 2) {
			player_id.player_HP_2 -= 1;
		}
		if (player_id.player_lives == 1) {
			player_id.player_HP_1 -= 1;
		}
		invulnerability_frames = 60;
		show_debug_message("YOU GOT HIT!");
	}
}
