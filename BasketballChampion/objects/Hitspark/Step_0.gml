/// @description Insert description here
// You can write your code in this editor

if (first_time) 
{
	if (impact_speed < 30)
	{
		sprite_index = SpriteLowHitspark;
	}
	else
	{
		sprite_index = SpriteMediumHitspark;
	}
	
	first_time = false;
}

if (frame_counter > lifetime)
{
	instance_destroy();
}

frame_counter++;