// Reset state variables
player_is_sliding = false;
image_angle = 0;

// Retrieve the ball
player_has_ball = true;
instance_destroy(football_id);

// Recreate the hitbox
var hitbox_id = MakePlayerDamageHitbox();
hitbox_id.invulnerability_frames = invulnerability_frames_post_sliding;
