// Kill all the minions
show_debug_message("End Phase 2");
for (var i = 0; i < number_of_minions; i++)
{
	if (instance_exists(minions[i]))
	{
		instance_destroy(minions[i]);
	}
}

instance_destroy(Phase2BulletSpawner_id);
instance_destroy(BasicBullet);

Phase = LevelOnePhase.PAUSE_TWO;
