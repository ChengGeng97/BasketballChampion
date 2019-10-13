// Kill all the minions
for (var i = 0; i < number_of_minions; i++)
{
	if (instance_exists(minions[i]))
	{
		instance_destroy(minions[i]);
	}
}

instance_destroy(Phase2BulletSpawner_id);
