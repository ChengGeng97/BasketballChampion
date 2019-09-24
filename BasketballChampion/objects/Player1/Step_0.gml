/// @description Player controls
// You can write your code in this editor

////////////////////
// PLAYER MOVEMENT//
////////////////////

var no_buttons_pressed = keyboard_check(vk_nokey);

var left_button_pressed = keyboard_check(ord("A"));
var right_button_pressed = keyboard_check(ord("D"));
var up_button_pressed = keyboard_check(ord("W"));
var down_button_pressed = keyboard_check(ord("S"));

var spacebar_pressed = keyboard_check(vk_space);

var effective_speed = spacebar_pressed ? focus_speed : player_speed;

if (no_buttons_pressed)
{
	// Don't move
}
else if (left_button_pressed && up_button_pressed) 
{
	// Move up-left
	x -= effective_speed;
	y -= effective_speed;
}
else if (left_button_pressed && down_button_pressed)
{
	x -= effective_speed;
	y += effective_speed;
}
else if (left_button_pressed && right_button_pressed)
{
	// Don't move
}
else if (left_button_pressed) 
{
	// Move pure left
	x -= effective_speed;
}
else if (right_button_pressed && up_button_pressed)
{
	// Move up-right
	x += effective_speed;
	y -= effective_speed;
}
else if (right_button_pressed && down_button_pressed)
{
	// Move down-right
	x += effective_speed;
	y += effective_speed;
}
else if (right_button_pressed) 
{
	// Move pure right
	x += effective_speed;
}
else if (up_button_pressed && down_button_pressed)
{
	// Don't move
}
else if (up_button_pressed)
{
	// Move pure up
	y -= effective_speed;
}
else if (down_button_pressed) 
{
	// Move pure down
	y += effective_speed;
}

// Prevent player from moving out-of-bounds
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);


//////////////////////
// SHOOTING CONTROL //
//////////////////////

var left_button_clicked_this_frame = mouse_check_button_pressed(mb_left);
var left_button_released_this_frame = mouse_check_button_released(mb_left);

// If left button is released, do a kick
if (left_button_released_this_frame)
{
	// DO A KICK
	show_debug_message("ATTEMPTING KICK");
	
	if (player_has_ball)
	{
		show_debug_message("SHOOT NEW BALL");
		player_has_ball = false;
		
		// SPAWN THE BALL
		var the_football = instance_create_depth(x, y, 0, football_reference);
		the_football.x_direction = normalised_x;
		the_football.y_direction = normalised_y;
	}
	else
	{
		show_debug_message("TRY TO KICK EXISTING BALL");
		// DO A RANDOM KICK
	}
	
	mouse_held_down = false;
	should_draw_guide = false;
}

// If left button is not released, display the shooting guide
if (mouse_held_down)
{
	var current_mouse_position_x = mouse_x;
	var current_mouse_position_y = mouse_y;
	
	var vector_x = mouse_down_position_x - current_mouse_position_x;
	var vector_y = mouse_down_position_y - current_mouse_position_y;
	
	var vector_magnitude = sqrt(vector_x * vector_x + vector_y * vector_y);
	
	normalised_x = vector_x / vector_magnitude;
	normalised_y = vector_y / vector_magnitude;
	
	// DISPLAY THE SHOT GUIDE (See: Draw Event Code)
	should_draw_guide = true;
}

// If left button was pressed, save the current coordinates
if (left_button_clicked_this_frame)
{
	mouse_down_position_x = mouse_x;
	mouse_down_position_y = mouse_y;
	mouse_held_down = true;
}
