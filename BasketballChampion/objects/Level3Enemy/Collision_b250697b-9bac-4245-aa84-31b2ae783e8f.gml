/// @description Insert description here
// You can write your code in this editor

HP -= round(other.ball_speed);

show_debug_message("Damage: " + string(round(other.ball_speed)));
show_debug_message("HP Left: " + string(HP));


if (Phase == LevelThreePhase.THREE)
{
	if (HP <= 200)
	{
		idle_frames = 60;
	}
	else if (HP <= 400)
	{
		idle_frames = 120;
	}
}

with(other)
{
	DeleteBallReturnControlToPlayer();
}
