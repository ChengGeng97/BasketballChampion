x += player_sliding_speed * player_sliding_direction_x;
y += player_sliding_speed * player_sliding_direction_y;

var outstep_room_boundary = x > room_width
                           || x < 0
						   || y > room_height
						   || y < 0;
						   
// Prevent player from moving out-of-bounds
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

sliding_frame_counter--;

if(sliding_frame_counter <= 0 || outstep_room_boundary)
{
	TransitSlidingToWithoutBall();
}
