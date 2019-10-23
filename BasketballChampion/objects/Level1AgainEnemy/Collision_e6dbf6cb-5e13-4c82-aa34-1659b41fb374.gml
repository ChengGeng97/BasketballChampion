/// @description Insert description here
// You can write your code in this editor

HP -= round(other.ball_speed);

show_debug_message("Damage: " + string(round(other.ball_speed)));
show_debug_message("HP Left: " + string(HP));

instance_create_depth(other.x, other.y, -1, Hitspark);

with (other)
{
	DeleteBallReturnControlToPlayer();
}
