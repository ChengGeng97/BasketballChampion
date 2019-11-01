/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
draw_sprite(SpritePlayerLifebarEmptyOuter, -1, 32, 1100);
draw_sprite(SpritePlayerLifebarEmptyInner, -1, 32, 1101);

//Health bar position
posx = 35;
posy = 1101;

//max hp bug (if your hp max, it will stop at max_hp)
//if enem>global.max_hp global.hp=global.max_hp
scale_per_unit = 194/3;
hsv = hsv_min;
for (i = 0; i < player_HP; i++) {
    //draw the color effect
    if hsv < hsv_max and hsv_effect {
        hsv += hsv_inc;
    }
 
    //create the color
    col = make_colour_hsv(hsv, saturation, 200);
 
    //draw the health fill
    draw_sprite_ext(SpritePlayerLifebarHealth, -1, posx + (scale_per_unit * i), posy, scale_per_unit, 1, 0, col, 1);
}