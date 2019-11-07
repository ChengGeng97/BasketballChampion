/// @description Insert description here
// You can write your code in this editor

if (visible)
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
	score += damage;

	show_debug_message("Damage: " + string(damage));
	show_debug_message("HP Left: " + string(Level2Manager.HP));

	var hitspark = instance_create_depth(other.x, other.y, depth - 1, Hitspark);
	hitspark.impact_speed = other.ball_speed;

	with (other)
	{
		DeleteBallReturnControlToPlayer();
	}
	
	level_two_enemy_state = Level2Phase2EnemyState.HIT;
	sprite_index = SpriteEnemyHit;
}
