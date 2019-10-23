if (sliding_frames_counter > sliding_frames_max)
{
	player_state = PlayerState.HasBall;
	sliding_frames_counter = 0;
	image_angle = 0;
}
else
{
	x += sliding_speed * sliding_direction_x;
	y += sliding_speed * sliding_direction_y;
	
	sliding_frames_counter++;
}
