DestroyPlayerDamageHitbox();
// DestroyPlayerCollectionHitbox();

player_is_sliding = true;
var oneOverRootTwo = sqrt(2) / 2;
sprite_index = sprite_sliding_up;

sliding_frame_counter = sliding_frame_max;

switch (player_facing_direction)
{
	case FacingDirection.Up:
		player_sliding_direction_x =  0;
		player_sliding_direction_y = -1;
		image_angle = 0;
		break;
		
	case FacingDirection.UpLeft:
		player_sliding_direction_x = -oneOverRootTwo;
		player_sliding_direction_y = -oneOverRootTwo;
		image_angle = 45;
		break;
		
	case FacingDirection.Left:
		player_sliding_direction_x = -1;
		player_sliding_direction_y =  0;
		image_angle = 90;
		break;
		
	case FacingDirection.DownLeft:
		player_sliding_direction_x = -oneOverRootTwo;
		player_sliding_direction_y =  oneOverRootTwo;
		image_angle = 135;
		break;		
		
	case FacingDirection.Down:
		player_sliding_direction_x = 0;
		player_sliding_direction_y = 1;
		image_angle = 180;
		break;
		
	case FacingDirection.DownRight:
		player_sliding_direction_x = oneOverRootTwo;
		player_sliding_direction_y = oneOverRootTwo;
		image_angle = 225;
		break;
		
	case FacingDirection.Right:
		player_sliding_direction_x = 1;
		player_sliding_direction_y = 0;
		image_angle = 270;
		break;
		
	case FacingDirection.UpRight:
		player_sliding_direction_x =  oneOverRootTwo;
		player_sliding_direction_y = -oneOverRootTwo;
		image_angle = 315;
		break;
		
	default:
		break;
}