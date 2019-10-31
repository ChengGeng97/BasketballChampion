/// @description Insert description here
// You can write your code in this editor

draw_self();

switch(player_state)
{
	case PlayerState.HasBall:
		draw_line(x, y, mouse_x, mouse_y);
		break;
		
	case PlayerState.LacksBall:
		draw_line(x, y, mouse_x, mouse_y);
		break;
		
	case PlayerState.ChargeKick:
		draw_line(x, y, mouse_x, mouse_y);
		break;
		
	case PlayerState.DashingWithBall:
		break;
		
	case PlayerState.DashingWithoutBall:
		break;
}

//colour stuff for health bar
//toggle hsv_effect
hsv_effect=1;

//minimum hsv and max hsv, max 255
hsv_min=40; //yellow
hsv_max=120; //green/blue

hsv=hsv_min;
hsv_inc= 5; //incremental hsv


saturation=250;
