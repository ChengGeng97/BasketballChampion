/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_sprite(EnemyLifebarEmptyOuter, -1, 0, -100);
draw_sprite(EnemyLifebarEmptyInner, -1, 2, -98);

//Health bar position
posx = 11;
posy = -98;

//max hp bug (if your hp max, it will stop at max_hp)
//if enem>global.max_hp global.hp=global.max_hp

hsv = hsv_max;
for (i = 0; i < HP; i++) {
    //draw the color effect
    if hsv > hsv_min and hsv_effect {
        hsv -= hsv_inc;
    }
 
    //create the color
    col = make_colour_hsv(hsv, saturation, 200);
 
    //draw the health fill
    draw_sprite_ext(EnemyLifebarHealth, -1, posx + (680/HP) * i, posy, (680/HP), 1, 0, col, 1);
}
