/// @description Insert description here
// You can write your code in this editor
//enemy health bar border
/*draw_sprite(SpriteEnemyLifebarEmptyOuter, -1, 32, 75);
draw_sprite(SpriteEnemyLifebarEmptyInner, -1, 34, 77);
*/

//Health bar position
posx = 90;
posy = 17;

//max hp bug (if your hp max, it will stop at max_hp)
//if enem>global.max_hp global.hp=global.max_hp
scale_per_unit = 658/(global.totalHP);
halfHealth = global.totalHP / 2;
oneEigthHealth = global.totalHP / 8;

if ((HP > halfHealth) && (HP <= global.totalHP)) {
	col = make_colour_hsv(110, 220, 250);
}

if ((oneEigthHealth < HP) && (HP <= halfHealth)) {
	col = make_colour_hsv(40, saturation, 200);
}

if (HP <= oneEigthHealth) {
	col = make_colour_hsv(hsv_min, 250, 200);
}


for (i = 0; i < HP; i++) {	
	
	draw_sprite_ext(SpriteEnemyLifebarHealth, -1, posx + 20 + (scale_per_unit * i), posy, scale_per_unit, 1, 0, col, 1);
}

//for (i = 0; i < HP; i++) {
	
/*
hsv = hsv_max;
for (i = 0; i < HP; i++) {
    //draw the color effect
   if hsv > hsv_min and hsv_effect {
        hsv -= hsv_inc;
    }
	
	
 
    //create the color
    col = make_colour_hsv(hsv, saturation, 200);
	*/
 
    //draw_sprite_ext(SpriteEnemyLifebarHealth, -1, posx + (scale_per_unit * i), posy, scale_per_unit, 1, 0, col, 1);
//}

draw_set_font(Main_GUI_Font);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text_transformed(87, 20, "Enemy", 1, 1, 0);