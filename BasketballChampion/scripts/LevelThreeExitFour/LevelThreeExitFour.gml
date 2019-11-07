instance_destroy(BowlingMeteor);
instance_destroy(MeteorWallExplosion);
instance_destroy(ActivatableBounceOffWallBullet);

// Phase = LevelThreePhase.PAUSE_FOUR;

sprite_index = SpriteLevel3EnemyDie;
GameManager.room_state = RoomState.ENEMY_DEFEATED;
Phase = LevelThreePhase.DIE;
