/// @description Insert description here
// You can write your code in this editor
//20 charas per line, 3 spaces per 1 in-game space

//draw_sprite_ext(GUI_Difficulty_Level_Flag_4, -1, x + 640, y - 120, 0.5, 1, 0, c_white, 1);
//draw dividers
//draw_sprite(GUI_Instructions_Page_Divider,-1, 467, 550); //split PLAYER WITH BALL and PLAYER WITHOUT BALL
draw_sprite(GUI_Instructions_Page_Divider_Under_Controls, -1, 330, 60);
draw_sprite(SpriteBallUpInstructions, -1, 125, 300); //w
draw_sprite(SpriteBallLeftInstructions, -1, 375, 300); //a
draw_sprite(SpriteBallDownInstructions, -1, 625, 300); //s
draw_sprite(SpriteBallRightInstructions, -1, 875, 300); //d
draw_sprite(SpriteBallUpInstructionsShootBall, -1, 250, 750); //shoot the ball
draw_sprite(SpriteBallUpInstructionsSliding, -1, 750, 770); //sLIDING


draw_set_font(Main_GUI_Font);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text_transformed(500, 10, "CONTROLS", 4, 4, 0);

//main controls
draw_text_transformed(500, 90, "R   -   RESTART   GAME", 2, 2, 0);
draw_text_transformed(125, 170, "W", 2, 2, 0);
draw_text_transformed(125, 200, "MOVE   UPWARDS", 1.5, 1.5, 0);
draw_text_transformed(375, 170, "A", 2, 2, 0);
draw_text_transformed(375, 200, "MOVE   LEFT", 1.5, 1.5, 0);
draw_text_transformed(625, 170, "S", 2, 2, 0);
draw_text_transformed(625, 200, "MOVE   DOWNWARDS", 1.5, 1.5, 0);
draw_text_transformed(875, 170, "D", 2, 2, 0);
draw_text_transformed(875, 200, "MOVE   RIGHT", 1.5, 1.5, 0);

//SHOOTING BALL
draw_text_transformed(250, 400, "PRESS   THE   LEFT", 1.5, 1.5, 0);
draw_text_transformed(250, 430, "MOUSE   TO   CHARGE", 1.5, 1.5, 0);
draw_text_transformed(250, 460, "AND   RELEASE   TO", 1.5, 1.5, 0);
draw_text_transformed(250, 490, "SHOOT   THE   BALL", 1.5, 1.5, 0);
draw_text_transformed(250, 520, "IN   THE   DIRECTION", 1.5, 1.5, 0);
draw_text_transformed(250, 550, "OF   YOUR   MOUSE", 1.5, 1.5, 0);
draw_text_transformed(250, 580, "POSITION", 1.5, 1.5, 0);

//SLIDING
draw_text_transformed(750, 400, "CLICK   THE   RIGHT", 1.5, 1.5, 0);
draw_text_transformed(750, 430, "MOUSE   TO   MAKE", 1.5, 1.5, 0);
draw_text_transformed(750, 460, "A   SHORT   DASH", 1.5, 1.5, 0);
draw_text_transformed(750, 490, "IN   THE   DIRECTION", 1.5, 1.5, 0);
draw_text_transformed(750, 520, "OF   YOUR   MOUSE", 1.5, 1.5, 0);
draw_text_transformed(750, 550, "POSITION   WHILE", 1.5, 1.5, 0);
draw_text_transformed(750, 580, "GAINING   TEMPORARY", 1.5, 1.5, 0);
draw_text_transformed(750, 610, "INVINCIBILITY", 1.5, 1.5, 0);

