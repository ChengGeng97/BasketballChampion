/// @description This is meant to track state variables such as Score etc.
// You can write your code in this editor

var down_button_pressed = keyboard_check(ord("R"));

if (down_button_pressed) {
	room_restart();
	score = 0;
}

switch (room_state)
{
	case RoomState.ONGOING:
		break;
		
	case RoomState.DEAD:
		if (!instance_exists(DeadStateOverlay))
		{
			instance_create_depth(0, 0, 0, DeadStateOverlay);
		}
		break;
		
	case RoomState.PAUSE:
		break;
}
