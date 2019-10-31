/// @description Insert description here
// You can write your code in this editor
//draw_sprite(SpriteScore, -1, 760, 200);
draw_sprite_ext(SpriteScore, -1, 745, 185, 1.2, 1.5, 0, c_white, 1);
col = make_colour_hsv(40, 200, 250);
draw_set_color(col);
draw_set_font(Score_Font);
draw_set_halign(fa_left);
draw_text_transformed(760, 200, "SCORE:", 2, 2, 0);
draw_set_halign(fa_right);
draw_text_transformed(900, 300, score, 2, 2, 0);