/// @description Insert description here
// You can write your code in this editor

if(player_HP == 0)
{
	player_state = PlayerState.Dead;
	room_goto(Game_Over_Page);
}
else
{
	switch(player_state)
	{
		case PlayerState.HasBall:
			PlayerControlHasBall();
			break;
			
		case PlayerState.LacksBall:
			PlayerControlLacksBall();
			break;
			
		case PlayerState.ChargeKick:
			PlayerControlChargeKick();
			break;
			
		case PlayerState.DashingWithBall:
			PlayerControlDashingWithBall();
			break;
			
		case PlayerState.DashingWithoutBall:
			PlayerControlDashingWithoutBall();
			break;
			
		case PlayerState.Dead:
			break;
	}
}
