/// @description Insert description here
// You can write your code in this editor

if (visible)
{
	var effective_ball_speed = other.real_ball_speed - other.real_base_speed;

	var mapped_ball_speed;

	if (effective_ball_speed < 20)
	{
		mapped_ball_speed = other.ball_speed;
	}
	else if (effective_ball_speed < 50)
	{
		mapped_ball_speed = effective_ball_speed * 1.3;
	}
	else
	{
		mapped_ball_speed = effective_ball_speed * 1.5;
	}

	var damage = round(mapped_ball_speed);
	HP -= damage;
	score += damage;

	show_debug_message("Damage: " + string(damage));
	show_debug_message("HP Left: " + string(HP));

	var hitspark = instance_create_depth(other.x, other.y, depth - 1, Hitspark);
	hitspark.impact_speed = other.ball_speed;
}


with (other)
{
	DeleteBallReturnControlToPlayer();
}


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

if (Phase == LevelThreePhase.DIE)
{
	visible = false;
	GameManager.room_state = RoomState.STAGE_CLEAR;
}

with(other)
{
	DeleteBallReturnControlToPlayer();
}
