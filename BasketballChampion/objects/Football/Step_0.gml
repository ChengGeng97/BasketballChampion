/// @description Makes the ball move around the screen
// You can write your code in this editor
if (x > room_width)
{
	x_direction = -x_direction;
}

if (x < 0)
{
	x_direction = -x_direction;
}

if (y > room_height || y < 0)
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

x += x_direction * ball_speed;
y += y_direction * ball_speed;

