/// @description Insert description here
// You can write your code in this editor

// 1. Generate the reflective surfaces
var left_hitbox = instance_create_depth(x, y, 1, VerticalReflectiveSurface);
var right_hitbox = instance_create_depth(x, y, 1, VerticalReflectiveSurface);

var top_hitbox = instance_create_depth(x, y, 1, HorizontalReflectiveSurface);
var bottom_hitbox = instance_create_depth(x, y, 1, HorizontalReflectiveSurface);

// 2. Tell the reflective surface what their scale should be
left_hitbox.scale_x = 1;
left_hitbox.scale_y = 1;

right_hitbox.scale_x = 1;
right_hitbox.scale_y = 1;

top_hitbox.scale_x = 2;
top_hitbox.scale_y = 1;

bottom_hitbox.scale_x = 2;
bottom_hitbox.scale_y = 1;

// 3. Tell the reflective surface what their offsets should be
left_hitbox.offset_x = -30;
right_hitbox.offset_x = 30;
top_hitbox.offset_y = -30;
bottom_hitbox.offset_y = 30;


// 4. Tell the reflective surface who their owner is
left_hitbox.owner_id = id;
right_hitbox.owner_id = id;
top_hitbox.owner_id = id;
bottom_hitbox.owner_id = id;
