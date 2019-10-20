/// @description Insert description here
// You can write your code in this editor

if (instance_exists(TutorialWalkingManager))
{
	if (TutorialWalkingManager.manager_state == WalkingTutorialState.SHOOT)
	{
		TutorialWalkingManager.manager_state = WalkingTutorialState.HIT;
		instance_destroy();
	}
}


if (instance_exists(TutorialShootingManager))
{
	if (TutorialShootingManager.manager_state = ShootingTutorialState.START)
	{
		TutorialShootingManager.manager_state = ShootingTutorialState.HIT;
		instance_destroy();
	}
}