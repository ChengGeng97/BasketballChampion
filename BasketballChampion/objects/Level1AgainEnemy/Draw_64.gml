/// @description Insert description here
// You can write your code in this editor
draw_sprite(SpriteEnemyLifebarEmptyOuter, -1, 32, 75);
draw_sprite(SpriteEnemyLifebarEmptyInner, -1, 34, 77);

//Health bar position
posx = 44;
posy = 77;

//max hp bug (if your hp max, it will stop at max_hp)
//if enem>global.max_hp global.hp=global.max_hp
scale_per_unit = 680/(global.totalHP);
hsv = hsv_max;
for (i = 0; i < HP; i++) {
    //draw the color effect
    if hsv > hsv_min and hsv_effect {
        hsv -= hsv_inc;
    }
 
    //create the color
    col = make_colour_hsv(hsv, saturation, 200);
 
    //draw the health fill
    draw_sprite_ext(SpriteEnemyLifebarHealth, -1, posx + (scale_per_unit * i), posy, scale_per_unit, 1, 0, col, 1);
}
