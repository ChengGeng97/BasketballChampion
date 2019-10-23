/// @description Insert description here
// You can write your code in this editor

switch (manager_state)
{
	case ShootingTutorialState.START:
		draw_text(220, 100, "Bounce the ball off the wall!");
		break;
	
	case ShootingTutorialState.HIT:
		draw_text(215, 100, "CONGRTUALIONS! You win game!!!");
		draw_text(240, 125, "Press Enter to continue!!");
		break;
}
