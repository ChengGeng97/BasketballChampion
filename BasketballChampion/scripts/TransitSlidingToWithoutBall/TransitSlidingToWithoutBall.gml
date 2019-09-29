player_is_sliding = false;
image_angle = 0;

var hitbox_id = MakePlayerDamageHitbox();
hitbox_id.invulnerability_frames = invulnerability_frames_post_sliding;

//MakePlayerCollectionHitbox();