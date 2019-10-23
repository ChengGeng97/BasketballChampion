/// @description Insert description here
// You can write your code in this editor

/*
Currently the levels progress 1 -> 3 -> 4
*/

switch (Phase)
{
	case LevelThreePhase.ENTER_ONE:
		LevelThreeEnterOne();
		break;
		
	case LevelThreePhase.ONE:
		LevelThreeStepOne();
		break;
		
	case LevelThreePhase.EXIT_ONE:
		LevelThreeExitOne();
		break;
		
	case LevelThreePhase.PAUSE_ONE:
		if (pause_frame_counter >= pause_duration_frames)
		{
			pause_frame_counter = 0;
			Phase = LevelThreePhase.ENTER_THREE;
		}
		pause_frame_counter++;
		break;


	case LevelThreePhase.ENTER_TWO:
		break;
		
	case LevelThreePhase.TWO:
		break;
		
	case LevelThreePhase.EXIT_TWO:
		break;
		
	case LevelThreePhase.PAUSE_TWO:
		if (pause_frame_counter >= pause_duration_frames)
		{
			pause_frame_counter = 0;
			Phase = LevelThreePhase.ENTER_THREE;
		}
		pause_frame_counter++;
		break;


	case LevelThreePhase.ENTER_THREE:
		LevelThreeEnterThree();
		break;
		
	case LevelThreePhase.THREE:
		LevelThreeStepThree();
		break;
		
	case LevelThreePhase.EXIT_THREE:
		LevelThreeExitThree();
		break;
		
	case LevelThreePhase.PAUSE_THREE:
		if (pause_frame_counter >= pause_duration_frames)
		{
			pause_frame_counter = 0;
			Phase = LevelThreePhase.ENTER_FOUR;
		}
		pause_frame_counter++;
		break;


	case LevelThreePhase.ENTER_FOUR:
		LevelThreeEnterFour();
		break;

	case LevelThreePhase.FOUR:
		LevelThreeStepFour();
		break;

	case LevelThreePhase.EXIT_FOUR:
		LevelThreeExitFour();
		break;

	case LevelThreePhase.PAUSE_FOUR:
		break;
}
