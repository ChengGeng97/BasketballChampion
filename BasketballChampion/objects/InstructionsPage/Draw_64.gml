/// @description Insert description here
// You can write your code in this editor
//20 charas per line, 3 spaces per 1 in-game space

//draw_sprite_ext(GUI_Difficulty_Level_Flag_4, -1, x + 640, y - 120, 0.5, 1, 0, c_white, 1);
//draw dividers
//draw_sprite(GUI_Instructions_Page_Divider,-1, 467, 550); //split PLAYER WITH BALL and PLAYER WITHOUT BALL
draw_sprite(GUI_Instructions_Page_Divider_Under_Controls, -1, 303, 60);
draw_sprite(SpriteBallUpInstructions, -1, 117, 350); //w
draw_sprite(SpriteBallLeftInstructions, -1, 350, 360); //a
draw_sprite(SpriteBallDownInstructions, -1, 584, 350); //s
draw_sprite(SpriteBallRightInstructions, -1, 818, 366); //d
draw_sprite(SpriteBallUpInstructionsShootBall, -1, 233, 915); //shoot the ball
draw_sprite(SpriteBallUpInstructionsSliding, -1, 701, 935); //sLIDING


draw_set_font(Main_GUI_Font);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text_transformed(467, 20, "CONTROLS", 4, 4, 0);

//main controls
draw_text_transformed(467, 120, "R   -   RESTART   GAME", 2, 2, 0);
draw_text_transformed(117, 200, "W", 2, 2, 0);
draw_text_transformed(117, 270, "MOVE UPWARDS", 1.5, 1.5, 0);
draw_text_transformed(350, 200, "A", 2, 2, 0);
draw_text_transformed(350, 270, "MOVE LEFT", 1.5, 1.5, 0);
draw_text_transformed(584, 200, "S", 2, 2, 0);
draw_text_transformed(584, 270, "MOVE DOWNWARDS", 1.5, 1.5, 0);
draw_text_transformed(818, 200, "D", 2, 2, 0);
draw_text_transformed(818, 270, "MOVE RIGHT", 1.5, 1.5, 0);

//SHOOTING BALL
draw_text_transformed(233, 550, "PRESS   THE   LEFT", 1.5, 1.5, 0);
draw_text_transformed(233, 585, "MOUSE   TO   CHARGE", 1.5, 1.5, 0);
draw_text_transformed(233, 620, "AND   RELEASE   TO", 1.5, 1.5, 0);
draw_text_transformed(233, 655, "SHOOT   THE   BALL", 1.5, 1.5, 0);
draw_text_transformed(233, 690, "IN   THE   DIRECTION", 1.5, 1.5, 0);
draw_text_transformed(233, 725, "OF   YOUR   MOUSE", 1.5, 1.5, 0);
draw_text_transformed(233, 760, "POSITION", 1.5, 1.5, 0);

//SLIDING
draw_text_transformed(701, 550, "CLICK   THE   RIGHT", 1.5, 1.5, 0);
draw_text_transformed(701, 585, "MOUSE   TO   MAKE", 1.5, 1.5, 0);
draw_text_transformed(701, 620, "A   SHORT   DASH", 1.5, 1.5, 0);
draw_text_transformed(701, 655, "IN   THE   DIRECTION", 1.5, 1.5, 0);
draw_text_transformed(701, 690, "OF   YOUR   MOUSE", 1.5, 1.5, 0);
draw_text_transformed(701, 725, "POSITION   WHILE", 1.5, 1.5, 0);
draw_text_transformed(701, 760, "GAINING   TEMPORARY", 1.5, 1.5, 0);
draw_text_transformed(701, 795, "INVINCIBILITY", 1.5, 1.5, 0);

