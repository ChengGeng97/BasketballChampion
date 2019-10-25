/// @description Insert description here
// You can write your code in this editor

var rounded = round(other.ball_speed);
var damage = (rounded == 60) ? 90 : rounded;
HP -= damage;

show_debug_message("Damage: " + string(damage));
show_debug_message("HP Left: " + string(HP));


if (Phase == LevelThreePhase.THREE)
{
	if (PhaseThreeState == Level3Phase3State.IDLE)
	{
		state_frame_counter = idle_frames;
	}
	
	if (HP <= 200)
	{
		idle_frames = 60;
	}
	else if (HP <= 400)
	{
		idle_frames = 120;
	}
}

if (Phase == LevelThreePhase.FOUR)
{
	if (HP <= 300)
	{
		moving_state_frames = 120;
	}
	else if (HP <= 500)
	{
		moving_state_frames = 180;
	}
}

with(other)
{
	DeleteBallReturnControlToPlayer();
}
