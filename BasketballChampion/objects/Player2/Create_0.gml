/// @description Initialise the player, set some global variables
// You can write your code in this editor


// Creates the hitbox
MakePlayerDamageHitbox();

// Used to keep track of the direction the player is facing
enum FacingDirection
{
	Up, UpLeft, Left, DownLeft, Down, DownRight, Right, UpRight
}

// Uncomment this to use arrow-keys
/*
left_button = vk_left; // ord("A");
right_button = vk_right; // ord("D");
up_button = vk_up; // ord("W");
down_button = vk_down; // ord("S");
*/

// Uncomment this to use WASD
left_button = ord("A");
right_button = ord("D");
up_button = ord("W");
down_button = ord("S");

/*
action_button_A = ord("Z");
action_button_B = ord("X");
*/