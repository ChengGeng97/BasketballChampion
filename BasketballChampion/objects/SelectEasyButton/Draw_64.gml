/// @description Insert description here
// You can write your code in this editor

draw_set_font(Title_Credits);
draw_set_halign(fa_center);

if (hasentered) {
	draw_set_color(c_yellow);
} else {
	draw_set_color(c_white);
}

draw_text_transformed(x + 266, y + 50, "Bogey", 1, 1, 0);
draw_text_transformed(x + 266, y + 150, "4 HP per Life" , 1, 1, 0);
