/// @description This is meant to track state variables such as Score etc.
// You can write your code in this editor

var down_button_pressed = keyboard_check(ord("R"));

if (down_button_pressed) {
	room_restart();
	score = 0;
}

switch (room_state)
{
	case RoomState.PAUSE:
		break;
		
	case RoomState.ONGOING:
		break;
		
	case RoomState.DEAD:
		if (!instance_exists(DeadStateOverlay))
		{
			instance_create_depth(0, 0, 0, DeadStateOverlay);
		}
		break;

	case RoomState.ENEMY_DEFEATED:
		if (!instance_exists(EnemyDefeatedOverlay))
		{
			instance_create_depth(0, 0, 0, EnemyDefeatedOverlay);
		}
		break;
		
	case RoomState.STAGE_CLEAR:
		show_debug_message("akjgh");
		if (!instance_exists(StageClearOverlay))
		{
			instance_destroy(EnemyDefeatedOverlay);
			instance_create_depth(0, 0, 0, StageClearOverlay);
		}
		
		if (keyboard_check_pressed(vk_enter))
		{
			room_goto(room_enemy.next_room);
			show_debug_message("MOVE");
		}
		break;
}
