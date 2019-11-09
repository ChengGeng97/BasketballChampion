/// @description Insert description here
// You can write your code in this editor

if (hasentered) {
	draw_set_color(c_yellow);
} else {
	draw_set_color(c_white);
}

draw_set_font(Title_Credits);
draw_set_halign(fa_center);

draw_text(x, y - 50, "Toggle Cutscenes:");

if (global.cutscenes_on)
{
	draw_text(x, y, "On");
}
else
{
	draw_text(x, y, "Off");
}
