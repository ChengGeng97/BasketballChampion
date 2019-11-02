/// @description Insert description here
// You can write your code in this editor
draw_set_font(Main_GUI_Font);
draw_set_color(c_white);
draw_set_halign(fa_center);
if (hasentered) {
	draw_sprite(GameOverHighlightChoice1, -1, x, y);
	draw_set_color(c_yellow);
}

draw_text_transformed(x + 500, y + 25, "YES", 3, 3, 0);