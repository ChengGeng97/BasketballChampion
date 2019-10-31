/// @description Insert description here
// You can write your code in this editor

//health
draw_sprite(SpritePowerBarOuter, -1, 790, 100);
draw_sprite(SpritePowerBarEmptyInner, -1, 790, 100);

//Health bar position
posx = 795;
posy = 100;

//max hp bug (if your hp max, it will stop at max_hp)
//if enem>global.max_hp global.hp=global.max_hp
var powerlevel = ReturnBallSpeed();

hsv = hsv_max;
for (i = 0; i < powerlevel; i++) {
    //draw the color effect
    if hsv > hsv_min and hsv_effect {
        hsv -= hsv_inc;
    }
 
    //create the color
    col = make_colour_hsv(hsv, saturation, 200);
 
    //draw the health fill
    draw_sprite_ext(SpritePowerBarFill, -1, posx, posy + i, 1, 1, 0, col, 1);
}
