/// @description Call your custom script here!
// You can write your code in this editor

switch(Phase)
{
	case LevelOnePhase.ENTER_ONE:
		LevelOneEnterOne();
		break;
		
	case LevelOnePhase.ONE:
		LevelOneStepOne();
		break;
		
	case LevelOnePhase.EXIT_ONE:
		LevelOneExitOne();
		break;
		
	case LevelOnePhase.PAUSE_ONE:
		if(pause_frame_counter >= pause_duration_frames)
		{
			pause_frame_counter = 0;
			Phase = LevelOnePhase.ENTER_TWO;
		}
		pause_frame_counter++;
		break;






	case LevelOnePhase.ENTER_TWO:
		LevelOneEnterTwo();
		break;
		
	case LevelOnePhase.TWO:
		LevelOneStepTwo();
		break;
		
	case LevelOnePhase.EXIT_TWO:
		LevelOneExitTwo();
		break;
		
	case LevelOnePhase.PAUSE_TWO:
		if(pause_frame_counter >= pause_duration_frames)
		{
			pause_frame_counter = 0;
			Phase = LevelOnePhase.ENTER_THREE;
		}
		pause_frame_counter++;
		break;






	case LevelOnePhase.ENTER_THREE:
		LevelOneEnterThree();
		break;
		
	case LevelOnePhase.THREE:
		LevelOneStepThree();
		break;
	
	case LevelOnePhase.EXIT_THREE:
		LevelOneExitThree();
		break;






	case LevelOnePhase.DIE:
		break;
}

/*
For now, do your work on the first two states. We can move them to the correct scripts later.

Design:
1. In the transition state, create all the variables you need and advance the phase.
     Remember to set the HP so that it isn't zero.
	 
2. In the numbered state:
     - Set up your own state machine for the phase if necessary
	 - Update the step-wise behaviour

3. In the next transition state, destroy all the variables you no longer need and advance the phase
    The guy whose job is to merge branches/PRs will help to merge to transitions together.
*/
