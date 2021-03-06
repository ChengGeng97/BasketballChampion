/// @description Insert description here
// You can write your code in this editor

player_state = PlayerState.HasBall;
player_facing_direction = FacingDirection.Up;

left_button = ord("A");
right_button = ord("D");
up_button = ord("W");
down_button = ord("S");

left_mouse_button = mb_left;
right_mouse_button = mb_right;
retrieve_button = vk_space;

player_hitbox = instance_create_depth(x, y, -1, PlayerDamageHitbox);
player_hitbox.player_id = id;

depth = 5;

mask_index = PlayerCollisionMask;

starting_x = x;
starting_y = y;
