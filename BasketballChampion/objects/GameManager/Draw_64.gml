/// @description Insert description here
// You can write your code in this editor

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
