/// @description Insert description here
// You can write your code in this editor

/*
button[3] = "Main Menu"
*/

draw_self();

draw_sprite_ext(GUI_Difficulty_Level_Flag_2, -1, x + 600, y, 0.5, 0.5, 0, c_white, 1);
draw_set_font(Main_GUI_Font);
draw_set_color(c_white);
if (hasentered) {
	draw_set_color(c_aqua);
}
draw_set_halign(fa_center);
draw_text_transformed(x + 350, y + 70, "Hole-In-One - A life is 1 hit!", 2, 2, 0);