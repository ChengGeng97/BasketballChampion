/// @description Insert description here
// You can write your code in this editor

enum FacingDirection
{
	Up, UpLeft, Left, DownLeft, Down, DownRight, Right, UpRight
}

if(player_has_ball)
{
	PlayerControlWithBall();
} 
else
{
	PlayerControlWithoutBall();
}