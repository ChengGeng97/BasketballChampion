/// @description Insert description here
// You can write your code in this editor

// Set draw colour for shot guide
draw_set_colour(c_lime);

// Create hitbox
var hitbox = instance_create_depth(x - 6, y - 30, -1, hitbox_resource);
hitbox.player_id = id;