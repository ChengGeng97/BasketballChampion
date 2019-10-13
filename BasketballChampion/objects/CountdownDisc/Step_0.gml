/// @description Insert description here
// You can write your code in this editor

if (countdown_counter >= countdown_period)
{
	countdown_counter -= countdown_period;
	Phase -= 1;
	
	switch (Phase)
	{
		case 2:
			sprite_index = SpriteCountdown2;
			break;
		
		case 1:
			sprite_index = SpriteCountdown1;
			break;

		case 0:
			sprite_index = SpriteCountdown0;
			break;
			
		case -1:
			instance_destroy();
			break;
	}
}

countdown_counter++;
