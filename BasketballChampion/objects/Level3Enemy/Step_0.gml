/// @description Insert description here
// You can write your code in this editor

switch (Phase)
{
	case LevelThreePhase.ENTER_ONE:
		LevelThreeEnterOne();
		break;
		
	case LevelThreePhase.ONE:
		LevelThreeStepOne();
		break;
		
	case LevelThreePhase.EXIT_ONE:
		break;
		
	case LevelThreePhase.PAUSE_ONE:
		if (pause_frame_counter >= pause_duration_frames)
		{
			pause_frame_counter = 0;
			Phase = LevelThreePhase.ENTER_TWO;
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
		break;
		
	case LevelThreePhase.THREE:
		break;
		
	case LevelThreePhase.EXIT_THREE:
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
		break;

	case LevelThreePhase.FOUR:
		break;

	case LevelThreePhase.EXIT_FOUR:
		break;

	case LevelThreePhase.PAUSE_FOUR:
		break;
}


/*
switch(Phase)
{
	case LevelThreePhase.TRANSIT_ZERO_TO_ONE:
		LevelThreeTransitZeroToOne();
		break;
		
	case LevelThreePhase.ONE:
		LevelThreeStepOne();
		break;
		
	case LevelThreePhase.TRANSIT_ONE_TO_TWO:
		LevelThreeTransitOneToTwo();
		break;
	
	case LevelThreePhase.TWO:
		LevelThreeStepTwo();
		break;
	
	case LevelThreePhase.TRANSIT_TWO_TO_THREE:
		LevelThreeTransitTwoToThree();
		break;
	
	case LevelThreePhase.THREE:
		LevelThreeStepThree();
		break;
	
	case LevelThreePhase.TRANSIT_THREE_TO_FOUR:
		LevelThreeTransitThreeToFour();
		break;
	
	case LevelThreePhase.FOUR:
		LevelThreeStepFour();
		break;
		
	case LevelThreePhase.DIE:
		LevelThreeDie();
		break;
}
*/