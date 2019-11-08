// @description Insert description here
// You can write your code in this editor

//health
draw_sprite(SpritePowerBarOuter, -1, 1024, 150);
draw_sprite(SpritePowerBarEmptyInner, -1, 1024, 150);

//Health bar position
posx = 1024;
posy = 782;

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
    //draw the health fill
    draw_sprite_ext(SpritePowerBarFill, -1, posx, posy - (scale_per_unit*i), 1, scale_per_unit, 0, col, 1);
}