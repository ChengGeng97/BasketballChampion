/// @description Insert description here
// You can write your code in this editor

switch (manager_state)
{
	case FightingTutorialState.START:
		draw_text(255, 300, "Try to reach the plate!");
		draw_text(230, 325, "Your shot will clear bullets!");
		draw_text(210, 350, "Right-click is an invincible dash!");
		break;
	
	case FightingTutorialState.REACH_PLATE:
		draw_text(290, 300, "Destroy the bag!");
		draw_text(120, 325, "You can hold left-click to charge up for more damage!");
		break;
	
	case FightingTutorialState.BAG_DIED:
		draw_text(110, 300, "You are ready to play game!!!! Press Enter to exit!!!");
		break;
}
