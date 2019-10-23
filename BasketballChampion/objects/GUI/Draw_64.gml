/// @description Insert description here
// You can write your code in this editor
//draw_sprite_ext(sprite36, -1, 64*xscale(), 64*yscale(), xscale(), yscale(), 0, -1, 1);
display_set_gui_size(934, 1200);
//display_set_gui_maximize(1, 1, -50, -150);
draw_sprite(EnemyLifebar, -1, 50, 35);
draw_sprite(PlayerLifebar, -1, 305, 1100);
draw_sprite(PlayerLifebar, -1, 50, 1100);
draw_sprite(PlayerLifebar, -1, 560, 1100);
draw_sprite(PowerBar, -1, 790, 400);
draw_sprite_ext(PowerBarTitle, -1, 765, 370, 0.5, 0.5, 0, -1, 1);
draw_sprite_ext(Score, -1, 770, 900, 1.25, 1.75, 0, -1, 1);
