/// @description Exists so that we can draw the shooting guides
// You can write your code in this editor

draw_self();

if (player_has_ball) {
	draw_set_colour(c_blue);
	draw_line(x, y, mouse_x, mouse_y);
} else {
	draw_set_colour(c_red);
	draw_line(x, y, football_id.x, football_id.y);
}
