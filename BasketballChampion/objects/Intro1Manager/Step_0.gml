/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left))
{
	switch (current_frame)
	{
		case 1:
			current_frame++;
			sprite_index = SpriteIntro2;
			break;
			
		case 2:
			current_frame++;
			sprite_index = SpriteIntro3;
			break;
			
		case 3:
			current_frame++;
			sprite_index = SpriteIntro4;
			break;

		case 4:
			current_frame++;
			sprite_index = SpriteIntro5;
			break;

		case 5:
			current_frame++;
			sprite_index = SpriteIntro6;
			break;
			
		case 6:
			current_frame++;
			sprite_index = SpriteIntro7;
			break;
			
		case 7:
			current_frame++;
			sprite_index = SpriteIntro8;
			break;
		
		case 8:
			room_goto(global.room_sequence[++global.room_index]);
			show_debug_message("MOVE");
			break;
	}
}

if (keyboard_check_pressed(vk_enter))
{
	room_goto(global.room_sequence[++global.room_index]);
	show_debug_message("MOVE");
}
