/// @description Insert description here
// You can write your code in this editor

if (other.player_state != PlayerState.DashingWithBall && other.player_state != PlayerState.DashingWithoutBall)
{
	other.x = other.xprevious;
	other.y = other.yprevious;
}
