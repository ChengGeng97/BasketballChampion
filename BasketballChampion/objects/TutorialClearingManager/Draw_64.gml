/// @description Insert description here
// You can write your code in this editor

draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_color(c_white);

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
		draw_text(GameManager.x_pad + 75, GameManager.y_pad + 75, "If your ball ever gets stuck, press Spacebar to retrieve it.");
		draw_text(GameManager.x_pad + 180, GameManager.y_pad + 100, "Your hitbox is the red-and-white circle.");
		break;
	
	case TutorialClearingState.REACH_PLATE:
		draw_text(GameManager.x_pad + 200, GameManager.y_pad + 50, "Good job! Press enter to continue!");
		break;
}
