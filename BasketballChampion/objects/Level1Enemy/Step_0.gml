/// @description Call your custom script here!
// You can write your code in this editor

switch(Phase)
{
	case LevelOnePhase.TRANSIT_ZERO_TO_ONE:
		LevelOneTransitZeroToOne();
		break;
		
	case LevelOnePhase.ONE:
		LevelOneStepOne();
		break;
		
	case LevelOnePhase.TRANSIT_ONE_TO_TWO:
		LevelOneTransitOneToTwo();
		break;
	
	case LevelOnePhase.TWO:
		LevelOneStepTwo();
		break;
	
	case LevelOnePhase.TRANSIT_TWO_TO_THREE:
		LevelOneTransitTwoToThree();
		break;
	
	case LevelOnePhase.THREE:
		LevelOneStepThree();
		break;
		
	case LevelOnePhase.DIE:
		LevelOneDie();
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
