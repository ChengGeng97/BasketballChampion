/// @description Insert description here
// You can write your code in this editor

if (big_mole_state == BigMoleState.MOVING)
{
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

	show_debug_message("Damage: " + string(damage));
	show_debug_message("HP Left: " + string(HP));
	
	if (HP <= 0)
	{
		big_mole_state = BigMoleState.INJURED;
		sprite_index = SpriteBigMoleInjured;
		HP = 90;
	}
}


var hitspark = instance_create_depth(other.x, other.y, depth - 1, Hitspark);
hitspark.impact_speed = other.ball_speed;

with (other)
{
	DeleteBallReturnControlToPlayer();
}
