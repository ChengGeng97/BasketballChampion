/// @description Insert description here
// You can write your code in this editor

if (phase_one_hole_state == Phase1HoleState.MOLE_CHARGE
    || phase_one_hole_state == Phase1HoleState.MOLE_ATTACK
	|| phase_one_hole_state == Phase1HoleState.MOLE_IDLE)
{
	phase_one_hole_state = Phase1HoleState.MOLE_HIT;
	sprite_index = SpriteMoleHit;
	
	var hitspark = instance_create_depth(other.x, other.y, depth - 1, Hitspark);
	hitspark.impact_speed = other.ball_speed;
	
	with (other)
	{
		DeleteBallReturnControlToPlayer();
	}
	
	if (instance_exists(p_ball))
	{
		instance_destroy(p_ball);
	}
}


if (phase_one_hole_state == Phase1HoleState.E_CHARGE
    || phase_one_hole_state == Phase1HoleState.E_ATTACK
	|| phase_one_hole_state == Phase1HoleState.E_IDLE)
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
	Level2Manager.HP -= damage;

	show_debug_message("Damage: " + string(damage));
	show_debug_message("HP Left: " + string(Level2Manager.HP));


	if (Level2Manager.HP <= 120)
	{
		Level2Manager.character_row = 0;
	}
	else if (Level2Manager.HP <= 240)
	{
		Level2Manager.character_row = 1;
	}
	else if (Level2Manager.HP <= 360)
	{
		Level2Manager.character_row = 2;
	}
	else if (Level2Manager.HP <= 480)
	{
		Level2Manager.character_row = 3;
	}


	phase_one_hole_state = Phase1HoleState.E_HIT;
	sprite_index = SpriteEnemyHit;
	
	var hitspark = instance_create_depth(other.x, other.y, depth - 1, Hitspark);
	hitspark.impact_speed = other.ball_speed;
	
	with (other)
	{
		DeleteBallReturnControlToPlayer();
	}
	
	if (instance_exists(p_ball))
	{
		instance_destroy(p_ball);
	}
}
