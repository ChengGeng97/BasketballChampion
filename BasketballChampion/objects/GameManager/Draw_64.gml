/// @description Insert description here
// You can write your code in this editor

// For drawing the player's health
if (instance_exists(player_object))
{
	var player_life_bar_sprite;
	
	switch (player_object.player_HP)
	{
		case 1:
			player_life_bar_sprite = SpritePlayerHealthRed;
			break;
		
		case 2:
			player_life_bar_sprite = SpritePlayerHealthYellow;
			break;
		
		case 3:
			player_life_bar_sprite = SpritePlayerHealthGreen;
			break;
			
		case 4:
			player_life_bar_sprite = SpritePlayerHealthBlue;
			break;
	}
	
	
	switch (max_HP)
	{
		case 1:
			draw_sprite(SpritePlayerLifebarEmpty, -1, 414, 955);
			for (var i = 1; i <= player_object.player_HP; i++)
			{
				draw_sprite(player_life_bar_sprite, -1, lifebar_x_1[i - 1], 955);
			}
			break;
			
		case 2:
			draw_sprite(SpritePlayerLifebarEmpty, -1, 339, 955);
			draw_sprite(SpritePlayerLifebarEmpty, -1, 489, 955);
			for (var i = 1; i <= player_object.player_HP; i++)
			{
				draw_sprite(player_life_bar_sprite, -1, lifebar_x_2[i - 1], 955);
			}
			break;
			
		case 3:
			draw_sprite(SpritePlayerLifebarEmpty, -1, 264, 955);
			draw_sprite(SpritePlayerLifebarEmpty, -1, 414, 955);
			draw_sprite(SpritePlayerLifebarEmpty, -1, 564, 955);
			for (var i = 1; i <= player_object.player_HP; i++)
			{
				draw_sprite(player_life_bar_sprite, -1, lifebar_x_3[i - 1], 955);
			}
			break;
			
		case 4:
			draw_sprite(SpritePlayerLifebarEmpty, -1, 189, 955);
			draw_sprite(SpritePlayerLifebarEmpty, -1, 339, 955);
			draw_sprite(SpritePlayerLifebarEmpty, -1, 489, 955);
			draw_sprite(SpritePlayerLifebarEmpty, -1, 639, 955);
			for (var i = 1; i <= player_object.player_HP; i++)
			{
				draw_sprite(player_life_bar_sprite, -1, lifebar_x_4[i - 1], 955);
			}
			break;
	}
}

// For drawing the enemy's health
if (instance_exists(room_enemy))
{
	// Draw the enemy text
	draw_set_font(Main_GUI_Font);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text_transformed(87, 20, "Enemy", 1, 1, 0);

	//Health bar position
	posx = 90;
	posy = 17;

	scale_per_unit = 658 / room_enemy.total_phase_HP;

	if (room_enemy.HP > 0)
	{
		if (room_enemy.HP <= room_enemy.oneEighthHealth) {
			col = $B9C8FF;
		}
		else if (room_enemy.HP <= room_enemy.halfHealth)
		{
			col = $B9FFFB;
		}
		else
		{
			col = $B9FFC8;
		}

		// Draw the bar
		for (i = 0; i < room_enemy.HP; i++) {	
			draw_sprite_ext(SpriteEnemyLifebarHealth, -1, posx + 20 + (scale_per_unit * i), posy, scale_per_unit, 1, 0, col, 1);
		}
	}
}
