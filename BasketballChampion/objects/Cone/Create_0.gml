/// @description Insert description here
// You can write your code in this editor

depth = 6;

var horizontal = instance_create_depth(x, y, 0, HorizontalReflectiveSurface);
horizontal.image_xscale = 0.9;
horizontal.image_yscale = 2;
horizontal.visible = false;
horizontal.owner_id = id;
