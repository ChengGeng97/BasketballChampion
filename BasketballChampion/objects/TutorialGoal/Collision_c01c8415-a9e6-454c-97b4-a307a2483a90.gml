/// @description Insert description here
// You can write your code in this editor

if (TutorialWalkingManager.manager_state == WalkingTutorialState.SHOOT)
{
	TutorialWalkingManager.manager_state = WalkingTutorialState.HIT;
	instance_destroy();
}