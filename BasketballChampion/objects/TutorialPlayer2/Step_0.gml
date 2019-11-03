/// @description Insert description here
// You can write your code in this editor

if (player_HP == 0)
{
	player_HP = 1;
	x = starting_x;
	y = starting_y;
}
else
{
	switch(player_state)
	{
		case PlayerState.HasBall:
			TutPlayerControlHasBall();
			break;
			
		case PlayerState.LacksBall:
			TutPlayerControlLacksBall();
			break;
			
		case PlayerState.ChargeKick:
			TutPlayerControlChargeKick();
			break;
			
		case PlayerState.DashingWithBall:
			TutPlayerControlDashingWithBall();
			break;
			
		case PlayerState.DashingWithoutBall:
			TutPlayerControlDashingWithoutBall();
			break;
			
		case PlayerState.Dead:
			break;
	}
}
