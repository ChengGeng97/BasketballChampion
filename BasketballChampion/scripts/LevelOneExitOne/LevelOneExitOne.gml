// Clean-up for Phase 1
instance_destroy(level_one_spawner);
show_debug_message("End Phase 1");
instance_destroy(BasicBullet);

Phase = LevelOnePhase.PAUSE_ONE;
