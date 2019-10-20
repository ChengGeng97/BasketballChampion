/// @description Insert description here
// You can write your code in this editor

horizontal = instance_create_depth(x, y, 0, HorizontalReflectiveSurface);
horizontal.image_xscale = 8;
horizontal.image_yscale = 2;
horizontal.visible = false;
horizontal.owner_id = id;


left = instance_create_depth(x, y, -1, VerticalReflectiveSurface);
left.image_xscale = 2;
left.offset_x = -150;
left.visible = false;
left.owner_id = id;


right = instance_create_depth(x, y, -1, VerticalReflectiveSurface);
right.image_xscale = 2;
right.offset_x = 150;
right.visible = false;
right.owner_id = id;
