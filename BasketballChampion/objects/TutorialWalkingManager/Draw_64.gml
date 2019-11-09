/// @description Insert description here
// You can write your code in this editor
draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_color(c_white);

switch (manager_state)
{
	case WalkingTutorialState.START:
		draw_text(GameManager.x_pad + 237, GameManager.y_pad + 100, "Use the WASD keys to move!");
		break;
	
	case WalkingTutorialState.ACTIVATING:
		draw_set_halign(fa_center);
		switch (discs_activated)
		{
			case 1:
				draw_text(GameManager.x_pad + 350, GameManager.y_pad + 100, "Do your best!");
				break;
				
			case 2:
				draw_text(GameManager.x_pad + 350, GameManager.y_pad + 100, "You're doing great!");
				break;
				
			case 3:
				draw_text(GameManager.x_pad + 350, GameManager.y_pad + 100, "No one has ever gone this far!");
				break;
				
			case 4:
				draw_text(GameManager.x_pad + 350, GameManager.y_pad + 100, "GREAT!");
				break;
				
			case 5:
				draw_text(GameManager.x_pad + 350, GameManager.y_pad + 100, "SUPERB!!");
				break;
				
			case 6:
				draw_text(GameManager.x_pad + 350, GameManager.y_pad + 100, "FANTASTIC!!!");
				break;
				
			case 7:
				draw_text(GameManager.x_pad + 350, GameManager.y_pad + 100, "AMAZING!!!!");
				break;
				
			case 8:
				draw_text(GameManager.x_pad + 350, GameManager.y_pad + 100, "You're almost there!");
				break;
				
			case 9:
				draw_text(GameManager.x_pad + 350, GameManager.y_pad + 100, "Don't give up!");
				break;
				
			case 10:
				draw_text(GameManager.x_pad + 350, GameManager.y_pad + 100, "Just one more!");
				break;
				
			case 11:
				manager_state = WalkingTutorialState.SHOOT;
				break;
		}
		break;
	
	case WalkingTutorialState.SHOOT:
		draw_set_halign(fa_left);
		draw_text(GameManager.x_pad + 190, GameManager.y_pad + 100, "USE THE LEFT MOUSE BUTTON TO FIRE!!!1!");
		break;
		
	case WalkingTutorialState.HIT:
		draw_text(GameManager.x_pad + 210, GameManager.y_pad + 75, "You are SUPER PLAYER!!!!!!!!!!");
		draw_text(GameManager.x_pad + 230, GameManager.y_pad + 100, "Press Enter to continue!!");
		break;
}


