/// @description Insert description here
// You can write your code in this editor

draw_self();

switch(player_state)
{
	case PlayerState.HasBall:
		draw_set_colour(c_lime);
		draw_line(x, y, mouse_x, mouse_y);
		break;
		
	case PlayerState.LacksBall:
		draw_set_colour(c_lime);
		draw_line(x, y, mouse_x, mouse_y);
		break;
		
	case PlayerState.ChargeKick:
		draw_set_colour(c_red);
		draw_line(x, y, mouse_x, mouse_y);
		break;
		
	case PlayerState.DashingWithBall:
		break;
		
	case PlayerState.DashingWithoutBall:
		break;
}

