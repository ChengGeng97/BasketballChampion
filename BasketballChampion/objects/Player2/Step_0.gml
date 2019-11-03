/// @description Insert description here
// You can write your code in this editor

if (first_time)
{
	GameManager.player_object = id;
	first_time = false;
}


if (player_HP == 0)
{
	player_state = PlayerState.Dead;
	
	if (global.lives_left > 0)
	{
		global.lives_left -= 1;
		player_state = PlayerState.HasBall;
		player_HP = global.max_HP;
		x = starting_x;
		y = starting_y;
		player_hitbox.invulnerability_frames = 60;
	}
	else
	{
		GameManager.room_state = RoomState.DEAD;
	}
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
