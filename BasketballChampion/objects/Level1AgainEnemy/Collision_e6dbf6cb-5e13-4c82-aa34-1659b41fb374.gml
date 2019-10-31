/// @description Insert description here
// You can write your code in this editor

var mapped_ball_speed;

if (other.ball_speed < 20)
{
	mapped_ball_speed = other.ball_speed;
}
else if (other.ball_speed < 50)
{
	mapped_ball_speed = other.ball_speed * 1.3;
}
else
{
	mapped_ball_speed = other.ball_speed * 1.5;
}

var damage = round(mapped_ball_speed);
HP -= damage;
score += damage;

show_debug_message("Damage: " + string(damage));
show_debug_message("HP Left: " + string(HP));

var hitspark = instance_create_depth(other.x, other.y, depth - 1, Hitspark);
hitspark.impact_speed = other.ball_speed;

with (other)
{
	DeleteBallReturnControlToPlayer();
}


if (Phase == LevelOneAgainPhase.ONE) 
{
	if (HP <= 400)
	{
		buffered_moving_shoot_period = 20;
		buffered_moving_bullet_speed = 5;
		buffered_moving_state_frames = 200;
		
		charging_state_frames = 40;
		tennis_speed = 27;
	}
}


if (Phase == LevelOneAgainPhase.TWO)
{
	if (HP <= 250)
	{
		fire_pause_frames = 60;
		tennis_ball_speed = 30;
	}
}
