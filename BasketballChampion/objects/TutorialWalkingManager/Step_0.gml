/// @description Insert description here
// You can write your code in this editor

if (manager_state = WalkingTutorialState.HIT)
{
	if (keyboard_check_pressed(vk_enter))
	{
		show_debug_message("Go to next room");
		room_goto(Week10_Tutorial_Shooting);
	}
}
