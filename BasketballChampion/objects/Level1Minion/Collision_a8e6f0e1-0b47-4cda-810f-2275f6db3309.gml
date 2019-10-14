/// @description Insert description here
// You can write your code in this editor

/// @description For when you get hit
// You can write your code in this editor

with(other)
{
	DeleteBallReturnControlToPlayer();
}

if (minion_state = MinionState.ALIVE)
{

	HP -= 1;

	show_debug_message("Hit Minion");

	if (HP <= 0) {
		minion_state = MinionState.DEAD;
	}
}
