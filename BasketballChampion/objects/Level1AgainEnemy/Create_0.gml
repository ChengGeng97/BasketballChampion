/// @description Insert description here
// You can write your code in this editor

//toggle hsv_effect
hsv_effect=1;

//minimum hsv and max hsv, max 255
hsv_min=0; //red
hsv_max=40; //yellow

hsv = hsv_max;
hsv_inc = 0.1; //incremental hsv

saturation=250;

enum LevelOneAgainPhase
{
	ENTER_ONE, ONE, EXIT_ONE, PAUSE_ONE,
	ENTER_TWO, TWO, EXIT_TWO, PAUSE_TWO,
	DIE
}

Phase = LevelOneAgainPhase.ENTER_ONE;
//Phase = LevelOneAgainPhase.ENTER_TWO;

pause_frame_counter = 0;
pause_duration_frames = 60;
