// Button checks
var no_buttons_pressed = keyboard_check(vk_nokey);

var left_button_pressed = keyboard_check(left_button);
var right_button_pressed = keyboard_check(right_button);
var up_button_pressed = keyboard_check(up_button);
var down_button_pressed = keyboard_check(down_button);

var right_clicked = mouse_check_button_pressed(right_mouse_button);
var spacebar_pressed = keyboard_check(retrieve_button);

var effective_speed = player_speed;

if (spacebar_pressed)
{
	with (Football)
	{
		DeleteBallReturnControlToPlayer();
	}
}
else if (right_clicked)
{
	player_state = PlayerState.DashingWithoutBall;
	player_hitbox.invulnerability_frames = sliding_frames_max + 20;
	
	var vector_x = mouse_x - x;
	var vector_y = mouse_y - y;
	
	var vector_mag = sqrt(vector_x * vector_x + vector_y * vector_y);
	
	sliding_direction_x = vector_x / vector_mag;
	sliding_direction_y = vector_y / vector_mag;	
	
	sprite_index = SpriteSlidingUp;
	
	var basic_angle = abs(darctan(vector_x / vector_y));
	
	if (vector_x >= 0 )
	{
		if (vector_y <= 0)
		{
			image_angle = -basic_angle;
		}
		else
		{
			image_angle = basic_angle + 180;
		}
	}
	else
	{
		if (vector_y <= 0)
		{
			image_angle = basic_angle;
		}
		else
		{
			image_angle = basic_angle + 90;
		}
	}
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
x = clamp(x, GameManager.x_pad, GameManager.x_max_bound);
y = clamp(y, GameManager.y_pad, GameManager.y_max_bound);


if (!right_clicked)
{
	// Change player's sprite according to movement
	switch (player_facing_direction)
	{
		case FacingDirection.Up:
			sprite_index = SpriteNoballUp;
			break;
		
		case FacingDirection.UpLeft:
			sprite_index = SpriteNoballUpLeft;
			break;
		
		case FacingDirection.Left:
			sprite_index = SpriteNoballLeft;
			break;
		
		case FacingDirection.DownLeft:
			sprite_index = SpriteNoballDownLeft;
			break;		
		
		case FacingDirection.Down:
			sprite_index = SpriteNoballDown;
			break;
		
		case FacingDirection.DownRight:
			sprite_index = SpriteNoballDownRight;
			break;
		
		case FacingDirection.Right:
			sprite_index = SpriteNoballRight;
			break;
		
		case FacingDirection.UpRight:
			sprite_index = SpriteNoballUpRight;
			break;
		
		default:
			break;
	}
}
