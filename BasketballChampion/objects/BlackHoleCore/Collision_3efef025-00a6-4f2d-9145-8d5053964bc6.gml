/// @description Insert description here
// You can write your code in this editor

with(other)
{
	instance_destroy();
	
	if(Player2.player_state == PlayerState.LacksBall)
	{
		Player2.player_state = PlayerState.HasBall;
	}
	else if (Player2.player_state == PlayerState.DashingWithoutBall)
	{
		Player2.player_state = PlayerState.DashingWithBall;
	}
	else
	{
		show_debug_message("Illegal State Transition!");
	}
}
