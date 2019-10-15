/// @description Insert description here
// You can write your code in this editor

// Used to keep track of the direction the player is facing
enum PlayerState
{
	HasBall, LacksBall, ChargeKick, DashingWithBall, DashingWithoutBall, Dead
}

enum FacingDirection
{
	Up, UpLeft, Left, DownLeft, Down, DownRight, Right, UpRight
}

player_state = PlayerState.HasBall;
player_facing_direction = FacingDirection.Up;

left_button = ord("A");
right_button = ord("D");
up_button = ord("W");
down_button = ord("S");

left_mouse_button = mb_left;
right_mouse_button = mb_right;

player_hitbox = instance_create_depth(x, y, -1, PlayerDamageHitbox);
player_hitbox.player_id = id;
