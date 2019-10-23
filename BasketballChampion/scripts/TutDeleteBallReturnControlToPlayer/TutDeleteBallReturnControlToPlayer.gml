instance_destroy();
	
if (instance_exists(TutorialPlayer2))
{
	if (TutorialPlayer2.player_state == PlayerState.LacksBall)
	{
		TutorialPlayer2.player_state = PlayerState.HasBall;
	}
	else if (TutorialPlayer2.player_state == PlayerState.DashingWithoutBall)
	{
		TutorialPlayer2.player_state = PlayerState.DashingWithBall;
	}
	else
	{
		show_debug_message("Illegal State Transition!");
	}
}	
