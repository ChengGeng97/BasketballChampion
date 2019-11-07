/// @description Insert description here
// You can write your code in this editor

switch (Phase)
{
	case LevelTwoPhase.ENTER_ONE:
		LevelTwoEnterOne();
		break;
	
	case LevelTwoPhase.ONE:
		LevelTwoStepOne();
		break;

	case LevelTwoPhase.EXIT_ONE:
		LevelTwoExitOne();
		break;

	case LevelTwoPhase.PAUSE_ONE:
		if (pause_frame_counter >= pause_duration_frames)
		{
			pause_frame_counter = 0;
			Phase = LevelTwoPhase.ENTER_TWO;
		}
		pause_frame_counter++;
		break;



	case LevelTwoPhase.ENTER_TWO:
		LevelTwoEnterTwo2();
		break;
		
	case LevelTwoPhase.TWO:
		LevelTwoStepTwo2();
		break;
		
	case LevelTwoPhase.EXIT_TWO:
		LevelTwoExitTwo2();
		break;
		
	case LevelTwoPhase.PAUSE_TWO:
		if (pause_frame_counter >= pause_duration_frames)
		{
			pause_frame_counter = 0;
			Phase = LevelTwoPhase.DIE;
		}
		pause_frame_counter++;
		break;



	case LevelTwoPhase.DIE:
		break;
}