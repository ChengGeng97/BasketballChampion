/// @description Insert description here
// You can write your code in this editor

/*
if ((player_lives == 1) && (player_HP_1 == 0)) {
	
	player_state = PlayerState.Dead;
	room_goto(Game_Over_Page);
	
} else if ((player_lives == 2) && (player_HP_2 == 0)) {
	
	player_lives -= 1;
	
} else if ((player_lives == 3) && (player_HP_3 == 0)) {
	
	player_lives -= 1;
	
}
else
*/

if (first_time)
{
	GameManager.player_object = id;
	first_time = false;
}


if (player_HP == 0)
{
	player_state = PlayerState.Dead;
    //room_goto(Game_Over_Page);
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
