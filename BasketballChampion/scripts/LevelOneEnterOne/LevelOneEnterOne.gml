x = starting_x;
y = starting_y;

HP = 380;
movement_speed = 1;
level_one_spawner = instance_create_depth(x, y, 5, Level1Phase1BulletSpawner);
level_one_spawner.owner_id = id;

padding = 300;
lower_bound_x = padding;
upper_bound_x = room_width - padding;

Phase = LevelOnePhase.ONE;
show_debug_message("Enter Phase 1");
