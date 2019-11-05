/// @description Insert description here
// You can write your code in this editor

GameManager.room_enemy = id;
next_room = Week9_Level2;

enum LevelOneAgainPhase
{
	ENTER_ONE, ONE, EXIT_ONE, PAUSE_ONE,
	ENTER_TWO, TWO, EXIT_TWO, PAUSE_TWO,
	DIE
}

Phase = LevelOneAgainPhase.ENTER_ONE;
//Phase = LevelOneAgainPhase.ENTER_TWO;

pause_frame_counter = 0;
pause_duration_frames = 60;
