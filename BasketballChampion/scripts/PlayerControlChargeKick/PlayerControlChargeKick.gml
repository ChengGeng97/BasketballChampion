// Button checks
var no_buttons_pressed = keyboard_check(vk_nokey);

var left_button_pressed = keyboard_check(left_button);
var right_button_pressed = keyboard_check(right_button);
var up_button_pressed = keyboard_check(up_button);
var down_button_pressed = keyboard_check(down_button);

var left_released = mouse_check_button_released(left_mouse_button);

var effective_speed = player_focus_speed;

if(left_released)
{
	BallManager.kick_charging = false;
	
	var football = instance_create_depth(x, y, -1, Football);
	
	var ball_speed = BallManager.base_speed + BallManager.kick_charge_frames;
	football.ball_speed = ball_speed;
	
	if (ball_speed == 80)
	{
		audio_play_sound(SfxKickFullPower, 0, false);
	}
	else if (ball_speed >= 50)
	{
		audio_play_sound(SfxKickHalfPower, 0, false);
	}
	else
	{
		audio_play_sound(SfxKickLowPower, 0, false);
	}
	
	BallManager.kick_charge_frames = 0;
	
	var vector_x = mouse_x - x;
	var vector_y = mouse_y - y;
	
	var vector_mag = sqrt(vector_x * vector_x + vector_y * vector_y);
	
	football.x_direction = vector_x / vector_mag;
	football.y_direction = vector_y / vector_mag;
	
	player_state = PlayerState.LacksBall;
}

// Player movement
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


// Change player's sprite according to movement
switch (player_facing_direction)
{
	case FacingDirection.Up:
		sprite_index = SpriteBallUp;
		break;
		
	case FacingDirection.UpLeft:
		sprite_index = SpriteBallUpLeft;
		break;
		
	case FacingDirection.Left:
		sprite_index = SpriteBallLeft;
		break;
		
	case FacingDirection.DownLeft:
		sprite_index = SpriteBallDownLeft;
		break;		
		
	case FacingDirection.Down:
		sprite_index = SpriteBallDown;
		break;
		
	case FacingDirection.DownRight:
		sprite_index = SpriteBallDownRight;
		break;
		
	case FacingDirection.Right:
		sprite_index = SpriteBallRight;
		break;
		
	case FacingDirection.UpRight:
		sprite_index = SpriteBallUpRight;
		break;
		
	default:
		break;
}
