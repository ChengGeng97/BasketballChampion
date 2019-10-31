/// @description Insert description here
// You can write your code in this editor


enum LevelTwoPhase
{
	ENTER_ONE, ONE, EXIT_ONE, PAUSE_ONE,
	ENTER_TWO, TWO, EXIT_TWO, PAUSE_TWO,
	DIE
}

Phase = LevelTwoPhase.ENTER_ONE;
// Phase = LevelTwoPhase.ENTER_TWO;

pause_frame_counter = 0;
pause_duration_frames = 60;
