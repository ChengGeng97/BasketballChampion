var no_buttons_pressed = keyboard_check(vk_nokey);

var left_button_pressed = keyboard_check(left_button);
var right_button_pressed = keyboard_check(right_button);
var up_button_pressed = keyboard_check(up_button);
var down_button_pressed = keyboard_check(down_button);

var action_pressed_A = keyboard_check_pressed(action_button_A);
var action_pressed_B = keyboard_check_pressed(action_button_B);

//var effective_speed = spacebar_pressed ? player_focus_speed : player_speed;
var effective_speed = player_speed;

if(action_pressed_B)
{
	TransitWithoutBallToSliding();
}
else
{
	if(collided_with_ball)
	{
		PlayerRecoverBallThroughCollision();
		collided_with_ball = false;
	}
	else if(action_pressed_A)
	{
		PlayerRecoverBallThroughAction();
	}
	
	if (no_buttons_pressed)
	{
		// Don't move
	}
	else if (left_button_pressed && up_button_pressed) 
	{
		// Move up-left
		x -= effective_speed;
		y -= effective_speed;
		player_facing_direction = FacingDirection.UpLeft;
	}
	else if (left_button_pressed && down_button_pressed)
	{
		x -= effective_speed;
		y += effective_speed;
		player_facing_direction = FacingDirection.DownLeft;
	}
	else if (left_button_pressed && right_button_pressed)
	{
		// Don't move
	}
	else if (left_button_pressed) 
	{
		// Move pure left
		x -= effective_speed;
		player_facing_direction = FacingDirection.Left;
	}
	else if (right_button_pressed && up_button_pressed)
	{
		// Move up-right
		x += effective_speed;
		y -= effective_speed;
		player_facing_direction = FacingDirection.UpRight;
	}
	else if (right_button_pressed && down_button_pressed)
	{
		// Move down-right
		x += effective_speed;
		y += effective_speed;
		player_facing_direction = FacingDirection.DownRight;
	}
	else if (right_button_pressed) 
	{
		// Move pure right
		x += effective_speed;
		player_facing_direction = FacingDirection.Right;
	}
	else if (up_button_pressed && down_button_pressed)
	{
		// Don't move
	}
	else if (up_button_pressed)
	{
		// Move pure up
		y -= effective_speed;
		player_facing_direction = FacingDirection.Up;
	}
	else if (down_button_pressed) 
	{
		// Move pure down
		y += effective_speed;
		player_facing_direction = FacingDirection.Down;
	}

	// Prevent player from moving out-of-bounds
	x = clamp(x, 0, room_width);
	y = clamp(y, 0, room_height);

	switch (player_facing_direction)
	{
		case FacingDirection.Up:
			sprite_index = sprite_noball_up
			break;
		
		case FacingDirection.UpLeft:
			sprite_index = sprite_noball_up_left
			break;
		
		case FacingDirection.Left:
			sprite_index = sprite_noball_left
			break;
		
		case FacingDirection.DownLeft:
			sprite_index = sprite_noball_down_left
			break;		
		
		case FacingDirection.Down:
			sprite_index = sprite_noball_down
			break;
		
		case FacingDirection.DownRight:
			sprite_index = sprite_noball_down_right
			break;
		
		case FacingDirection.Right:
			sprite_index = sprite_noball_right
			break;
		
		case FacingDirection.UpRight:
			sprite_index = sprite_noball_up_right
			break;
		
		default:
			break;
	}
}
