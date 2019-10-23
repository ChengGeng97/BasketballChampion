/// @description Insert description here
// You can write your code in this editor

enum DiggerState
{
	Digging, ChargeToFire, Fire, TransitFromFiretoDigging
}

enum DiggingDirection
{
	Upwards, Rightwards, Downwards, Leftwards
}

digger_state = DiggerState.ChargeToFire;
digging_direction = DiggingDirection.Downwards;
