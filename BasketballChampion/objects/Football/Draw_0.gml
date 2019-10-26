/// @description Insert description here
// You can write your code in this editor
draw_self();

//health
draw_sprite(PowerBarOuter, -1, 790, 100);
draw_sprite(PowerBarEmptyInner, -1, 790, 100);

//Health bar position
posx = 790;
posy = 100;

//max hp bug (if your hp max, it will stop at max_hp)
//if enem>global.max_hp global.hp=global.max_hp

hsv = hsv_max;
for (i = 0; i < ball_speed; i++) {
    //draw the color effect
    if hsv > hsv_min and hsv_effect {
        hsv -= hsv_inc;
    }
 
    //create the color
    col = make_colour_hsv(hsv, saturation, 200);
 
    //draw the health fill
    draw_sprite_ext(PlayerLifebarHealth, -1, posx, posy + ((650/ball_speed)*i), (650/ball_speed), 1, 0, col, 1);
}
