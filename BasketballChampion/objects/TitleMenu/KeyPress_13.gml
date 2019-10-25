switch(menu_index) {
	case 0: 
		room_goto(Difficulty_Screen);
		break;	
	case 1:
		//room_goto();
		break;
	case 2: 
		//room_goto();
		break;	
	case 3:
		room_goto(Credits_Screen);
		break;	
	case 4:
		game_end();
		break;
}