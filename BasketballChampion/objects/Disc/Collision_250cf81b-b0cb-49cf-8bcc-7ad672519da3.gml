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

	
	if (instance_exists(TutorialFightingManager))
	{
		if (TutorialFightingManager.manager_state == FightingTutorialState.START)
		{
			TutorialFightingManager.manager_state = FightingTutorialState.REACH_PLATE;
		}
		
		instance_destroy(BasicBullet);
	}
}
