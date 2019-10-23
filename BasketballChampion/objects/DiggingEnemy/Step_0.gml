/// @description Insert description here
// You can write your code in this editor

switch(digger_state)
{
	// Move around
	case DiggerState.Digging:
		switch(digging_direction)
		{
			case DiggingDirection.Upwards:
				sprite_index = SpriteDiggingUpwards;
				image_angle = 0;
				y -= digging_speed;
				break;
		
		
			case DiggingDirection.Rightwards:
				sprite_index = SpriteDiggingLeftwards;
				image_angle = 180;
				x += digging_speed;
				break;
		
		
			case DiggingDirection.Downwards:
				sprite_index = SpriteDiggingDownwards;
				image_angle = 0;
				y += digging_speed;
				break;
		
		
			case DiggingDirection.Leftwards:
				sprite_index = SpriteDiggingLeftwards;
				image_angle = 0;
				x -= digging_speed;
				break;
		}
		break;



	// Pause
	case DiggerState.ChargeToFire:
		sprite_index = SpriteAppearFromGround;
		
		if(charge_frames_counter >= shooting_charge_frames)
		{
			digger_state = DiggerState.Fire;
			charge_frames_counter = 0;
		}
		
		charge_frames_counter++;
		break;



	// Shoot
	case DiggerState.Fire:
		// Shoot bullet
		var bullet = instance_create_depth(x, y, -1, BasicBullet);
		
		var vector_x = Player2.x - x;
		var vector_y = Player2.y - y;
		
		var mag = sqrt(vector_x * vector_x + vector_y * vector_y);
		
		
		bullet.x_direction = vector_x / mag;
		bullet.y_direction = vector_y / mag;
		bullet.bullet_speed = bullet_speed;
		
		
		digger_state = DiggerState.TransitFromFiretoDigging;
		break;
		
		
		
	// Get back to moving
	case DiggerState.TransitFromFiretoDigging:
		digger_state = DiggerState.Digging;
		break;
}
