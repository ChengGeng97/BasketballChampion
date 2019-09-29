player_has_ball = false;

var collection_hitbox = MakePlayerCollectionHitbox();
collection_hitbox.frames_before_active = frames_to_ready_collection_on_kick;

// Create the new football
var the_football = instance_create_depth(x, y, 1, Football);
football_id = the_football;

// Set ball speed
the_football.ball_speed = BallManager.base_ball_speed 
                         + BallManager.combo_level * BallManager.ball_speed_increase_per_level;

// Set ball direction
var oneOverRootTwo = sqrt(2) / 2;
switch (player_facing_direction)
{
	case FacingDirection.Up:
		football_id.x_direction =  0;
		football_id.y_direction = -1;
		break;
		
	case FacingDirection.UpLeft:
		football_id.x_direction = -oneOverRootTwo;
		football_id.y_direction = -oneOverRootTwo;
		break;
		
	case FacingDirection.Left:
		football_id.x_direction = -1;
		football_id.y_direction =  0;
		break;
		
	case FacingDirection.DownLeft:
		football_id.x_direction = -oneOverRootTwo;
		football_id.y_direction =  oneOverRootTwo;
		break;		
		
	case FacingDirection.Down:
		football_id.x_direction = 0;
		football_id.y_direction = 1;
		break;
		
	case FacingDirection.DownRight:
		football_id.x_direction = oneOverRootTwo;
		football_id.y_direction = oneOverRootTwo;
		break;
		
	case FacingDirection.Right:
		football_id.x_direction = 1;
		football_id.y_direction = 0;
		break;
		
	case FacingDirection.UpRight:
		football_id.x_direction =  oneOverRootTwo;
		football_id.y_direction = -oneOverRootTwo;
		break;
		
	default:
		break;
}

// Increase combo meter
BallManager.combo_meter += BallManager.combo_increase_on_kick;
