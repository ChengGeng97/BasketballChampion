/// @description Insert description here
// You can write your code in this editor

if (!activated)
{
	activated = true;
	sprite_index = SpriteDiscActivated;
	
	if (TutorialWalkingManager.manager_state = WalkingTutorialState.START)
	{
		TutorialWalkingManager.manager_state = WalkingTutorialState.ACTIVATING;
	}
	
	TutorialWalkingManager.discs_activated++;
}

