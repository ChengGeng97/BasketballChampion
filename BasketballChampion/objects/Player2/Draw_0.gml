/// @description Insert description here
// You can write your code in this editor

draw_self();

if (player_has_ball) {
	draw_set_colour(c_lime);
	draw_line(x, y, mouse_x, mouse_y);
} else {
	draw_set_colour(c_red);
	draw_line(x, y, football_id.x, football_id.y);
}
