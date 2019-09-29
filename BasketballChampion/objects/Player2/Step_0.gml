/// @description Insert description here
// You can write your code in this editor

if(player_has_ball)
{
	PlayerControlWithBall();
} 
else
{
	if(player_is_sliding)
	{
		PlayerControlSliding();
	}
	else
	{	
		PlayerControlWithoutBall();
	}
}
