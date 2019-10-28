/// @description Insert description here
// You can write your code in this editor

switch (big_mole_state)
{
	case BigMoleState.MOVING:
		if (going_left)
		{
			x -= movement_speed;
		}
		else
		{
			x += movement_speed;
		}
		
		if (x < left_bound || x > right_bound)
		{
			going_left = !going_left;
			image_xscale = - image_xscale;
			
			/*
			if (!going_left)
			{
				image_xscale = -1;
			}
			else
			{
				image_xscale = 1;
			}
			*/
		}
		break;
		
	case BigMoleState.INJURED:
		if (frame_counter >= injury_state_frames)
		{
			frame_counter = 0;
			big_mole_state = BigMoleState.MOVING;
			sprite_index = SpriteBigMoleMove;
		}
		frame_counter++;
		break;
}
