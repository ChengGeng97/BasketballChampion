/// @description Insert description here
// You can write your code in this editor

if (first_time) 
{
	if (impact_speed < 30)
	{
		sprite_index = SpriteHitsparkLow;
	}
	
	first_time = false;
}

if (frame_counter >= lifetime)
{
	instance_destroy();
}

frame_counter++;
