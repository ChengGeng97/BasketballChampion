/// @description Insert description here
// You can write your code in this editor

switch (manager_state)
{
	case WalkingTutorialState.START:
		draw_text(237, 100, "Use the WASD keys to move!");
		break;
	
	case WalkingTutorialState.ACTIVATING:
		switch (discs_activated)
		{
			case 1:
				draw_text(330, 100, "Wow!!");
				break;
			case 2:
				draw_text(300, 100, "AMAZING!!!!");
				break;
			case 3:
				manager_state = WalkingTutorialState.SHOOT;
				break;
		}
		break;
	
	case WalkingTutorialState.SHOOT:
		draw_text(190, 100, "USE THE LEFT MOUSE BUTTON TO FIRE!!!1!");
		break;
		
	case WalkingTutorialState.HIT:
		draw_text(210, 75, "You are SUPER PLAYER!!!!!!!!!!");
		draw_text(220, 100, "Press Spacebar to continue!!");
		break;
}


