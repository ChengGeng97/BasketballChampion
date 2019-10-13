/// @description Insert description here
// You can write your code in this editor

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