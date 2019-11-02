/// @description Insert description here
// You can write your code in this editor

switch (manager_state)
{
	case WalkingTutorialState.START:
		draw_text(GameManager.x_pad + 237, GameManager.y_pad + 100, "Use the WASD keys to move!");
		break;
	
	case WalkingTutorialState.ACTIVATING:
		switch (discs_activated)
		{
			case 1:
				draw_text(GameManager.x_pad + 330, GameManager.y_pad + 100, "Wow!!");
				break;
			case 2:
				draw_text(GameManager.x_pad + 300, GameManager.y_pad + 100, "AMAZING!!!!");
				break;
			case 3:
				manager_state = WalkingTutorialState.SHOOT;
				break;
		}
		break;
	
	case WalkingTutorialState.SHOOT:
		draw_text(GameManager.x_pad + 190, GameManager.y_pad + 100, "USE THE LEFT MOUSE BUTTON TO FIRE!!!1!");
		break;
		
	case WalkingTutorialState.HIT:
		draw_text(GameManager.x_pad + 210, GameManager.y_pad + 75, "You are SUPER PLAYER!!!!!!!!!!");
		draw_text(GameManager.x_pad + 230, GameManager.y_pad + 100, "Press Enter to continue!!");
		break;
}


