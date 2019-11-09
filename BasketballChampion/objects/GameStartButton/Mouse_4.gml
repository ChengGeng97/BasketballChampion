/// @description Insert description here
// You can write your code in this editor

room_goto(RealDifficultyScreen);

global.room_index = 0;
if (global.cutscenes_on)
{
	// Series of rooms for cutscenes being off
	global.room_sequence[0] = Week9_Level1;
	global.room_sequence[1] = Week9_Level2;
	global.room_sequence[2] = Week9_Level3;
	global.room_sequence[3] = GameCompleteScreen;	
}
else
{
	// TODO: Series of rooms for cutscenes being on
	global.room_sequence[0] = Week9_Level1;
	global.room_sequence[1] = Week9_Level2;
	global.room_sequence[2] = Week9_Level3;
	global.room_sequence[3] = GameCompleteScreen;	
}
