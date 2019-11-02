/// @description Insert description here
// You can write your code in this editor

if (manager_state == TutorialClearingState.REACH_PLATE)
{
	if (keyboard_check_pressed(vk_enter))
	{
		show_debug_message("Go to next room");
		room_goto(Week10_Tutorial_Dashing);
	}
}


switch (manager_state) 
{
	case TutorialClearingState.START:
		draw_text(GameManager.x_pad + 200, GameManager.y_pad + 50, "Clear a path by kicking your ball!");
		break;
	
	case TutorialClearingState.REACH_PLATE:
		draw_text(GameManager.x_pad + 200, GameManager.y_pad + 50, "Good job! Press enter to continue!");
		break;
}
