/// @description Insert description here
// You can write your code in this editor

switch (old_mole_state)
{
	case OldMoleState.IDLE:
		if (frame_counter >= idle_state_frames)
		{
			frame_counter = 0;
			old_mole_state = OldMoleState.PREP_PUNCH;
			
			punching_with_left = choose(true, false);
			
			if (punching_with_left)
			{
				instance_create_depth(x, y, -1, LeftEyeFlash);
			}
			else
			{
				instance_create_depth(x, y, -1, RightEyeFlash);
			}
		}
		
		frame_counter++;
		break;
		
	case OldMoleState.PREP_PUNCH:
		if (frame_counter >= prep_state_frames)
		{
			frame_counter = 0;
			old_mole_state = OldMoleState.FIRE;
		}
		frame_counter++;
		break;
		
	case OldMoleState.FIRE:
		var punching_hand = punching_with_left ? left_glove : right_glove;
		
		punching_hand.glove_state = GloveState.COMPUTE_DIR;

		old_mole_state = OldMoleState.POST_FIRE;
		break;
		
	case OldMoleState.POST_FIRE:
		if (frame_counter >= post_state_frames)
		{
			frame_counter = 0;
			old_mole_state = OldMoleState.IDLE;
		}
		frame_counter++;
		break;
}
