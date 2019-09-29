if(!sliding_intialised) {
	PlayerInitialiseSliding();
	sliding_intialised = true;
}

var no_buttons_pressed = keyboard_check(vk_nokey);

var left_button_pressed = keyboard_check(ord("A"));
var right_button_pressed = keyboard_check(ord("D"));

var action_pressed = keyboard_check_pressed(ord("P"));

if(left_button_pressed || right_button_pressed)
{
	var sin_theta, cos_theta;
	
	if(left_button_pressed)
	{
		image_angle += player_sliding_incremental_angle;
		sin_theta = dsin(-player_sliding_incremental_angle);
		cos_theta = dcos(-player_sliding_incremental_angle);
	}
	else
	{
		image_angle -= player_sliding_incremental_angle;
		sin_theta = dsin(player_sliding_incremental_angle);
		cos_theta = dcos(player_sliding_incremental_angle);
	}

	var new_x = player_sliding_direction_x * cos_theta - player_sliding_direction_y * sin_theta;
	var new_y = player_sliding_direction_x * sin_theta + player_sliding_direction_y * cos_theta;
		
	player_sliding_direction_x = new_x;
	player_sliding_direction_y = new_y;
}

x += player_sliding_speed * player_sliding_direction_x;
y += player_sliding_speed * player_sliding_direction_y;

if(action_pressed) {
	sliding_intialised = false;
	player_is_sliding = false;
	image_angle = 0;
}