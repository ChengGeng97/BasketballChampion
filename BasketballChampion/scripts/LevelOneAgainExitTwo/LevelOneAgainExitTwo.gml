instance_destroy(UnclearableBullet);
instance_destroy(BasicBullet);
instance_destroy(TennisNet);
instance_destroy(TennisBall);

sprite_index = SpriteLevel1EnemyDie;
GameManager.room_state = RoomState.ENEMY_DEFEATED;
Phase = LevelOneAgainPhase.DIE;
