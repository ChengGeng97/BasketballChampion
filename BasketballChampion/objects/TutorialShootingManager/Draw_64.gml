/// @description Insert description here
// You can write your code in this editor
draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_color(c_white);

switch (manager_state)
{
	case ShootingTutorialState.START:
		draw_text(GameManager.x_pad + 220, GameManager.y_pad + 100, "Bounce the ball off the wall!");
		break;
	
	case ShootingTutorialState.HIT:
		draw_text(GameManager.x_pad + 215, GameManager.y_pad + 100, "CONGRTUALIONS! You win game!!!");
		draw_text(GameManager.x_pad + 240, GameManager.y_pad + 125, "Press Enter to continue!!");
		break;
}
