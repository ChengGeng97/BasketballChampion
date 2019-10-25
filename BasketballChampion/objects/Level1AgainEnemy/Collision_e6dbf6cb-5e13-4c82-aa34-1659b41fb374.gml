/// @description Insert description here
// You can write your code in this editor

var rounded = round(other.ball_speed);
var damage = (rounded == 60) ? 90 : rounded;
HP -= damage;

show_debug_message("Damage: " + string(damage));
show_debug_message("HP Left: " + string(HP));

var hitspark = instance_create_depth(other.x, other.y, depth - 1, Hitspark);
hitspark.impact_speed = other.ball_speed;

with (other)
{
	DeleteBallReturnControlToPlayer();
}
