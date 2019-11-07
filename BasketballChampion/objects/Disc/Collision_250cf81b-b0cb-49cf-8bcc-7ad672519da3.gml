/// @description Insert description here
// You can write your code in this editor

if (!activated)
{
	activated = true;
	sprite_index = SpriteDiscActivated;
	
	if (instance_exists(TutorialWalkingManager))
	{
		if (TutorialWalkingManager.manager_state == WalkingTutorialState.START)
		{
			TutorialWalkingManager.manager_state = WalkingTutorialState.ACTIVATING;
		}
	
		TutorialWalkingManager.discs_activated++;
	}

	
	if (instance_exists(TutorialDashingManager))
	{
		if (TutorialDashingManager.manager_state == FightingTutorialState.START)
		{
			TutorialDashingManager.manager_state = FightingTutorialState.REACH_PLATE;
			GameManager.room_enemy = TutorialPunchingBag;
		}
		
		instance_destroy(UnclearableBullet);
	}
	
	if (instance_exists(TutorialClearingManager))
	{
		if (TutorialClearingManager.manager_state == TutorialClearingState.START)
		{
			TutorialClearingManager.manager_state = TutorialClearingState.REACH_PLATE;
		}
	}
}
