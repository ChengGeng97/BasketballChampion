if (HP < 0) {
	Phase = LevelOnePhase.EXIT_ONE;
} else {
	x += movement_speed;

	if(x < lower_bound_x || x > upper_bound_x) {
		movement_speed = -movement_speed;
	}
}
