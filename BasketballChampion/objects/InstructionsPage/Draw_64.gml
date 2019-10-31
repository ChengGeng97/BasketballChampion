/// @description Insert description here
// You can write your code in this editor

//draw_sprite_ext(GUI_Difficulty_Level_Flag_4, -1, x + 640, y - 120, 0.5, 1, 0, c_white, 1);
//draw dividers
draw_sprite(GUI_Instructions_Page_Divider,-1, 467, 550); //split PLAYER WITH BALL and PLAYER WITHOUT BALL
draw_sprite(GUI_Instructions_Page_Divider_Under_Controls, -1, 303, 60);
draw_sprite(GUI_Instructions_Page_Divider_Horizontal, -1, 0, 550); //above player states
draw_sprite(GUI_Instructions_Page_Divider_Horizontal, -1, 0, 650); //below player states
draw_sprite(SpriteBallUpInstructions, -1, 117, 350); //w
draw_sprite(SpriteBallLeftInstructions, -1, 350, 360); //a
draw_sprite(SpriteBallDownInstructions, -1, 584, 350); //s
draw_sprite(SpriteBallRightInstructions, -1, 818, 366); //d
draw_sprite(SpriteBallUpInstructionsShootBall, -1, 233, 915); //shoot the ball


draw_set_font(Main_GUI_Font);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text_transformed(467, 20, "CONTROLS", 4, 4, 0);
draw_text_transformed(233, 585, "PLAYER   WITH   BALL", 3, 3, 0); //20 charas per line, 3 spaces per 1 in-game space
draw_text_transformed(710, 570, "PLAYER   WITHOUT   ", 3, 3, 0);
draw_text_transformed(710, 605, "BALL", 3, 3, 0);

//main controls
draw_text_transformed(467, 100, "R   -   RESTART   GAME", 2, 2, 0);
draw_text_transformed(117, 180, "W", 2, 2, 0);
draw_text_transformed(117, 250, "MOVE UPWARDS", 1.5, 1.5, 0);
draw_text_transformed(350, 180, "A", 2, 2, 0);
draw_text_transformed(350, 250, "MOVE LEFT", 1.5, 1.5, 0);
draw_text_transformed(584, 180, "S", 2, 2, 0);
draw_text_transformed(584, 250, "MOVE DOWNWARDS", 1.5, 1.5, 0);
draw_text_transformed(818, 180, "D", 2, 2, 0);
draw_text_transformed(818, 250, "MOVE RIGHT", 1.5, 1.5, 0);

//PLAYER WITH BALL
draw_text_transformed(233, 665, "PRESS   THE   LEFT", 2, 2, 0);
draw_text_transformed(233, 700, "MOUSE   TO   CHARGE", 2, 2, 0);
draw_text_transformed(233, 735, "AND   RELEASE   TO", 2, 2, 0);
draw_text_transformed(233, 770, "SHOOT   THE   BALL", 2, 2, 0);