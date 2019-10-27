/// @description Insert description here
// You can write your code in this editor

switch (manager_state)
{
	case FightingTutorialState.PRE_START:
		draw_text(230, 300, "Some bullets are unclearable.");
		draw_text(210, 350, "Right-click to dash through them!");
		break;
		
	case FightingTutorialState.START:
		draw_text(230, 300, "Some bullets are unclearable.");
		draw_text(210, 350, "Right-click to dash through them!");
		break;
	
	case FightingTutorialState.REACH_PLATE:
		draw_text(290, 300, "Destroy the bag!");
		draw_text(120, 325, "You can hold left-click to charge up for more damage!");
		break;
	
	case FightingTutorialState.BAG_DIED:
		draw_text(230, 300, "You are ready for play game!");
		draw_text(240, 325, "Press Enter for continue!!");
		break;
}
