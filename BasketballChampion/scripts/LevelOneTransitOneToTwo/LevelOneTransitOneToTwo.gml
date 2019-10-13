HP = 10;

Phase2BulletSpawner_id = instance_create_depth(x, y, -1, Level1EnemyPhase2BulletSpawner);

// Create the minions
var side_padding = 70;
var strip_length = 700 - side_padding * 2;
number_of_minions = 20;

var distance_between_minions = strip_length / (number_of_minions);
var accumulative_distance = side_padding;

var shooting_period_frames = 300;

var bullet_speed_min = 1;
var bullet_speed_max = 5;

minions[number_of_minions] = 0;

minion_respawn_period_frames = 600;
minion_respawn_frame_counter = 0;

for (var i = 0; i < number_of_minions; i++)
{
	// Create the minion
	minions[i] = instance_create_depth(accumulative_distance,
	                                   room_height / 2,
									   0,
									   Level1Minion);

	// Intialise their variables
	minions[i].shooting_period_frames = shooting_period_frames;
	minions[i].shooting_period_counter = irandom(shooting_period_frames - 1);
	minions[i].bullet_speed = irandom_range(bullet_speed_min, bullet_speed_max);

	// Put them further and further apart
	accumulative_distance += distance_between_minions;
}

Phase = LevelOnePhase.TWO;
show_debug_message("Enter Phase 2");
