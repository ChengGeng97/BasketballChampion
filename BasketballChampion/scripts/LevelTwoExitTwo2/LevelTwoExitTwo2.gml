instance_create_depth(Level2Phase2Enemy.x, Level2Phase2Enemy.y, 1, Level2EnemyDizzy);

instance_destroy(Level2Phase2Enemy);
instance_destroy(BasicBullet);
instance_destroy(Level2OldMole);
instance_destroy(LeftGlove);
instance_destroy(RightGlove);

GameManager.room_state = RoomState.ENEMY_DEFEATED;
Phase = LevelTwoPhase.DIE;
