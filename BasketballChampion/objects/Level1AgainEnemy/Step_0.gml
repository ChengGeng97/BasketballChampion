/// @description Insert description here
// You can write your code in this editor

switch (Phase)
{
	case LevelOneAgainPhase.ENTER_ONE:
		LevelOneAgainEnterOne();
		break;
	case LevelOneAgainPhase.ONE:
		LevelOneAgainStepOne();
		break;
	case LevelOneAgainPhase.EXIT_ONE:
		LevelOneAgainExitOne();
		break;
	case LevelOneAgainPhase.PAUSE_ONE:
		if (pause_frame_counter >= pause_duration_frames)
		{
			pause_frame_counter = 0;
			Phase = LevelOneAgainPhase.ENTER_TWO;
		}
		pause_frame_counter++;
		break;


	case LevelOneAgainPhase.ENTER_TWO:
		LevelOneAgainEnterTwo();
		break;
	case LevelOneAgainPhase.TWO:
		LevelOneAgainStepTwo();
		break;
	case LevelOneAgainPhase.EXIT_TWO:
		LevelOneAgainExitTwo();
		break;
	case LevelOneAgainPhase.PAUSE_TWO:
		if (pause_frame_counter >= pause_duration_frames)
		{
			pause_frame_counter = 0;
			Phase = LevelOneAgainPhase.DIE;
		}
		pause_frame_counter++;
		break;


	case LevelOneAgainPhase.DIE:
		break;
}