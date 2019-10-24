/// @description Insert description here
// You can write your code in this editor

if (instance_exists(TutorialFightingManager)
	&& TutorialFightingManager.manager_state == FightingTutorialState.REACH_PLATE)
{
	HP -= round(other.ball_speed);

	show_debug_message("Damage: " + string(round(other.ball_speed)));
	show_debug_message("HP Left: " + string(HP));
}

var hitspark = instance_create_depth(other.x, other.y, depth - 1, Hitspark);
hitspark.impact_speed = other.ball_speed;


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
