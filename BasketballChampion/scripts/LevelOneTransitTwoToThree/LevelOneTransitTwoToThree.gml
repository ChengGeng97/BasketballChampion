// Kill all the minions
for (var i = 0; i < number_of_minions; i++)
{
	if (instance_exists(minions[i]))
	{
		instance_destroy(minions[i]);
	}
}

instance_destroy(Phase2BulletSpawner_id);
shoot_row_period_frames = 60;
shoot_row_frame_counter = 0;

//Level1Enemy.HP = 10;
Level1Enemy.Phase = LevelOnePhase.THREE;
