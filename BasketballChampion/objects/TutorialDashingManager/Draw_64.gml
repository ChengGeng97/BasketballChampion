/// @description Insert description here
// You can write your code in this editor

switch (manager_state)
{
	case FightingTutorialState.PRE_START:
		draw_text(GameManager.x_pad + 230, GameManager.y_pad + 300, "Some bullets are unclearable.");
		draw_text(GameManager.x_pad + 210, GameManager.y_pad + 350, "Right-click to dash through them!");
		break;
		
	case FightingTutorialState.START:
		draw_text(GameManager.x_pad + 230, GameManager.y_pad + 300, "Some bullets are unclearable.");
		draw_text(GameManager.x_pad + 210, GameManager.y_pad + 350, "Right-click to dash through them!");
		break;
	
	case FightingTutorialState.REACH_PLATE:
		draw_text(GameManager.x_pad + 290, GameManager.y_pad + 300, "Destroy the bag!");
		draw_text(GameManager.x_pad + 120, GameManager.y_pad + 325, "You can hold left-click to charge up for more damage!");
		break;
	
	case FightingTutorialState.BAG_DIED:
		draw_text(GameManager.x_pad + 230, GameManager.y_pad + 300, "You are ready for play game!");
		draw_text(GameManager.x_pad + 240, GameManager.y_pad + 325, "Press Enter for continue!!");
		break;
}
