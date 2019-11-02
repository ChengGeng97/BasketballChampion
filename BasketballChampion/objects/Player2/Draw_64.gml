/// @description Insert description here
// You can write your code in this editor

//left border
draw_sprite(SpritePlayerLifebarEmptyOuter, -1, 285, 950);
draw_sprite(SpritePlayerLifebarEmptyInner, -1, 285, 950);

//middle border
draw_sprite(SpritePlayerLifebarEmptyOuter, -1, 385, 950);
draw_sprite(SpritePlayerLifebarEmptyInner, -1, 385, 950);

//right border
draw_sprite(SpritePlayerLifebarEmptyOuter, -1, 485, 950);
draw_sprite(SpritePlayerLifebarEmptyInner, -1, 485, 950);

//leftmost bar
	//Health bar position
	posx1 = 288;
	posy = 950;

	//max hp bug (if your hp max, it will stop at max_hp)
	//if enem>global.max_hp global.hp=global.max_hp
	scale_per_unit = 44/3;
	hsv = hsv_min;
	for (i = 0; i < player_HP_1; i++) {
	    //draw the color effect
	    if hsv < hsv_max and hsv_effect {
	        hsv += hsv_inc;
	    }
 
	    //create the color
	    col = make_colour_hsv(hsv, saturation, 200);
 
	    //draw the health fill
	    draw_sprite_ext(SpritePlayerLifebarHealth, -1, posx1 + (scale_per_unit * i), posy, scale_per_unit, 1, 0, col, 1);
	}
	
//middle bar
	//Health bar position
	posx2 = 388;

	//max hp bug (if your hp max, it will stop at max_hp)
	//if enem>global.max_hp global.hp=global.max_hp
	scale_per_unit = 44/3;
	hsv = hsv_min;
	for (i = 0; i < player_HP_2; i++) {
	    //draw the color effect
	    if hsv < hsv_max and hsv_effect {
	        hsv += hsv_inc;
	    }
 
	    //create the color
	    col = make_colour_hsv(hsv, saturation, 200);
 
	    //draw the health fill
	    draw_sprite_ext(SpritePlayerLifebarHealth, -1, posx2 + (scale_per_unit * i), posy, scale_per_unit, 1, 0, col, 1);
	}
	
//rightmost bar
	//Health bar position
	posx3 = 488;

	//max hp bug (if your hp max, it will stop at max_hp)
	//if enem>global.max_hp global.hp=global.max_hp
	scale_per_unit = 44/3;
	hsv = hsv_min;
	for (i = 0; i < player_HP_3; i++) {
	    //draw the color effect
	    if hsv < hsv_max and hsv_effect {
	        hsv += hsv_inc;
	    }
 
	    //create the color
	    col = make_colour_hsv(hsv, saturation, 200);
 
	    //draw the health fill
	    draw_sprite_ext(SpritePlayerLifebarHealth, -1, posx3 + (scale_per_unit * i), posy, scale_per_unit, 1, 0, col, 1);
	}
