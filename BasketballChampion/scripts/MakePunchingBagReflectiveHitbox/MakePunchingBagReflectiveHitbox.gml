var punching_bag_hitbox_id = instance_create_depth(x, y, -1, PunchingBag);
punching_bag_hitbox_id.player_id = id;
player_damage_hitbox_id = hitbox_id;

return hitbox_id;