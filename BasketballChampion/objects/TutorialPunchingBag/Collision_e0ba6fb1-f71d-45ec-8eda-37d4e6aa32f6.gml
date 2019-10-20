/// @description Insert description here
// You can write your code in this editor

if (instance_exists(TutorialFightingManager)
	&& TutorialFightingManager.manager_state == FightingTutorialState.REACH_PLATE)
{
	HP -= round(other.ball_speed);

	show_debug_message("Damage: " + string(round(other.ball_speed)));
	show_debug_message("HP Left: " + string(HP));
}

instance_create_depth(other.x, other.y, -1, Hitspark);

with (other)
{
	TutDeleteBallReturnControlToPlayer();
}


if (HP <= 0)
{
	if (instance_exists(TutorialFightingManager))
	{
		TutorialFightingManager.manager_state = FightingTutorialState.BAG_DIED;
	}
	
	instance_destroy();
}
