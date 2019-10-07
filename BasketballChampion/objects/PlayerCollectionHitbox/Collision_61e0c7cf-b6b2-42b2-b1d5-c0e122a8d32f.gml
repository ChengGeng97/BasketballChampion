/// @description Handles retrieval of the ball
// You can write your code in this editor

if(instance_exists(player_id))
{
	if(frames_before_active <= 0)
	{
		player_id.collided_with_ball = true;
	}
}
