if (HP < 0) {
	Phase = LevelOnePhase.TRANSIT_ONE_TO_TWO;
	instance_destroy();
	show_debug_message("End Phase 1");
} else {
	x += movement_speed;

	if(x < 0 || x > room_width) {
		movement_speed = -movement_speed;
	}
}

