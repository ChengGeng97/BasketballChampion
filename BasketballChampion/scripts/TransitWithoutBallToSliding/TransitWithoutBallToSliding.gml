// Freeze the ball's position
football_id.ball_speed = 0;

// Set player's direction
var player_to_football_vector_x = football_id.x - x;
var player_to_football_vector_y = football_id.y - y;

var vector_normalised_x = player_to_football_vector_x / sliding_frame_max;
var vector_normalised_y = player_to_football_vector_y / sliding_frame_max;

player_sliding_direction_x =  vector_normalised_x;
player_sliding_direction_y = vector_normalised_y;


// Destroy hitboxes
DestroyPlayerDamageHitbox();
DestroyPlayerCollectionHitbox();


// Set state variables
player_is_sliding = true;
sprite_index = sprite_sliding_up;

sliding_frame_counter = sliding_frame_max;

switch (player_facing_direction)
{
	case FacingDirection.Up:
		image_angle = 0;
		break;
		
	case FacingDirection.UpLeft:
		image_angle = 45;
		break;
		
	case FacingDirection.Left:
		image_angle = 90;
		break;
		
	case FacingDirection.DownLeft:
		image_angle = 135;
		break;		
		
	case FacingDirection.Down:
		image_angle = 180;
		break;
		
	case FacingDirection.DownRight:
		image_angle = 225;
		break;
		
	case FacingDirection.Right:
		image_angle = 270;
		break;
		
	case FacingDirection.UpRight:
		image_angle = 315;
		break;
		
	default:
		break;
}