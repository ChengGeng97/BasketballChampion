// @description Insert description here
// You can write your code in this editor

//health
draw_sprite(SpritePowerBarOuter, -1, 800, 150);
draw_sprite(SpritePowerBarEmptyInner, -1, 800, 150);

//Health bar position
posx = 800;
posy = 782;

//max hp bug (if your hp max, it will stop at max_hp)
//if enem>global.max_hp global.hp=global.max_hp
scale_per_unit = 635/60; //60 is max speed of ball
var powerlevel = BallManager.kick_charge_frames;


if (powerlevel < 30) {
	col = make_colour_hsv(40, saturation, 200);
}

if ((powerlevel >= 30) && (powerlevel < 60)) {
	col = make_colour_hsv(0, saturation, 200);
}

if (powerlevel == 60) {
	col = make_colour_hsv(130, 250, 250);
}

hsv = hsv_max;
for (i = 0; i < powerlevel; i++) {
    
	/*//draw the color effect
    if hsv > hsv_min and hsv_effect {
        hsv -= hsv_inc;
    }
 
    //create the color
    col = make_colour_hsv(hsv, saturation, 200);*/
	
	
	

    //draw the health fill
    draw_sprite_ext(SpritePowerBarFill, -1, posx, posy - (scale_per_unit*i), 1, scale_per_unit, 0, col, 1);
}