/// @description Insert description here
// You can write your code in this editor

enum OldMoleState 
{
	IDLE, PREP_PUNCH, FIRE, POST_FIRE
}

old_mole_state = OldMoleState.IDLE;

left_glove = instance_create_depth(0, 0, 0, LeftGlove);
right_glove = instance_create_depth(0, 0, 0, RightGlove);

frame_counter = 0;
punching_with_left = true;

idle_state_frames  = 120;
prep_state_frames = 60;
post_state_frames = 60;

selfdestruct_bounds = 4000;
