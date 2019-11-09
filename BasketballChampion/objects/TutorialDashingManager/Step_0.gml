/// @description Insert description here
// You can write your code in this editor

if (manager_state == FightingTutorialState.BAG_DIED)
{
	if (keyboard_check_pressed(vk_enter))
	{
		
		// DESTROY VARIABLES
		for (var i = 0; i < bullets_per_spawn; i++)
		{
			xPositions[i] = 0;
		}
		
		manager_state = 0;

		bullets_per_spawn = 0;
		shoot_period = 0;
		frame_counter = 0;
		incremental_space = 0;
		cumul_space = 0;

		show_debug_message("Go to next room");
		room_goto(RealTitleScreen);
	}
}



switch (manager_state)
{
	case FightingTutorialState.PRE_START:
		if (TutorialPlayer2.y <= 830)
		{
			manager_state = FightingTutorialState.START;
		}
		break;
	
	case FightingTutorialState.START:
		if (frame_counter >= shoot_period)
		{
			for (var i = 0; i < bullets_per_spawn; i++)
			{
				var bullet = instance_create_depth(xPositions[i], GameManager.y_pad, 0, UnclearableBullet);
				bullet.y_direction = 3;
				bullet.bullet_speed = 2;
			}
			
			frame_counter = 0;
		}
		
		frame_counter++;
		break;


	case FightingTutorialState.REACH_PLATE:
		break;


	case FightingTutorialState.BAG_DIED:
		break;
}