/// @description Insert description here
// You can write your code in this editor

HP -= other.ball_speed;

show_debug_message("Damage: " + string(other.ball_speed));
show_debug_message("HP Left: " + string(HP));

with(other)
{
	DeleteBallReturnControlToPlayer();
}
