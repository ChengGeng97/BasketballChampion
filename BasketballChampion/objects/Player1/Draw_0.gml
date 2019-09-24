/// @description Insert description here
// You can write your code in this editor

draw_self();

// Draw the shooting guide
if(should_draw_guide)
{

	draw_line(x, y, x + line_length * normalised_x, y + 1000 * normalised_y);
}
