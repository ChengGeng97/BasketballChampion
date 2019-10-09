/// @description Insert description here
// You can write your code in this editor

/// @description For when you get hit
// You can write your code in this editor

if (minion_state = MinionState.ALIVE)
{
	Football.x_direction = Football.x_direction * (-1);
	Football.y_direction = Football.y_direction * (-1);

	HP -= 1;

	show_debug_message("Hit Minion");

	if (HP <= 0) {
		minion_state = MinionState.DEAD;
		visible = false;
	}
}
