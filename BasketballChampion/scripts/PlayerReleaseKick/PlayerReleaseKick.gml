player_has_ball = false;

var collection_hitbox = MakePlayerCollectionHitbox();
collection_hitbox.frames_before_active = frames_to_ready_collection_on_kick;

// Create the new football
var the_football = instance_create_depth(x, y, 1, Football);
football_id = the_football;

var player_to_mouse_vector_x = mouse_x - x;
var player_to_mouse_vector_y = mouse_y - y;

var vector_magnitude = sqrt(player_to_mouse_vector_x * player_to_mouse_vector_x 
                            + player_to_mouse_vector_y * player_to_mouse_vector_y);

var vector_normalised_x = player_to_mouse_vector_x / vector_magnitude;
var vector_normalised_y = player_to_mouse_vector_y / vector_magnitude;


// Set ball speed
the_football.ball_speed = BallManager.base_ball_speed 
                         + BallManager.combo_level * BallManager.ball_speed_increase_per_level;

// Set ball direction
football_id.x_direction = vector_normalised_x;
football_id.y_direction = vector_normalised_y;
football_id.hspeed = vector_normalised_x * the_football.ball_speed;
football_id.vspeed = vector_normalised_y * the_football.ball_speed;

// Increase combo meter
BallManager.combo_meter += BallManager.combo_increase_on_kick;
