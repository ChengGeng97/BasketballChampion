/// @description Insert description here
// You can write your code in this editor

draw_self();

switch(player_state)
{
	case PlayerState.HasBall:
		draw_line(x, y, mouse_x, mouse_y);
		break;
		
	case PlayerState.LacksBall:
		draw_line(x, y, mouse_x, mouse_y);
		break;
		
	case PlayerState.ChargeKick:
		draw_line(x, y, mouse_x, mouse_y);
		break;
		
	case PlayerState.DashingWithBall:
		break;
		
	case PlayerState.DashingWithoutBall:
		break;
}


//health
draw_sprite(PlayerLifebarEmptyOuter, -1, 0, 950);
draw_sprite(PlayerLifebarEmptyInner, -1, 1, 950);

//Health bar position
posx = 4;
posy = 950;

//max hp bug (if your hp max, it will stop at max_hp)
//if enem>global.max_hp global.hp=global.max_hp

hsv = hsv_min;
for (i = 0; i < player_HP; i++) {
    //draw the color effect
    if hsv < hsv_max and hsv_effect {
        hsv += hsv_inc;
    }
 
    //create the color
    col = make_colour_hsv(hsv, saturation, 200);
 
    //draw the health fill
    draw_sprite_ext(PlayerLifebarHealth, -1, posx + ((194/player_HP)*i), posy, (194/player_HP), 1, 0, col, 1);
}
