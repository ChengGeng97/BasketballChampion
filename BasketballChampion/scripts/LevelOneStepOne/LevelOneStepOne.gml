if (HP < 0) {
	Phase = LevelOnePhase.TRANSIT_ONE_TO_TWO;
	instance_destroy();
	show_debug_message("End Phase 1");
} else {
	// Need to space out the direction changes a bit coz he's moving
	// like some bird on steroids
	if (frames_until_next_direction_change <= 0) {
		// Randomly move around
		var movement_radius = 100;
		var random_angle = random(360.0);
		var target_x = x + dcos(random_angle) * movement_radius;
		var target_y = y + dsin(random_angle) * movement_radius;
		
		// Can edit the bounds accordingly if the bird goes too far beyond
		if (target_x < 0) target_x *= -1;
		if (target_x > room_width) target_x = room_width - dcos(random_angle) * movement_radius;
		if (target_y < 0) target_y *= -1;
		if (target_y > room_height) target_y = room_height - dsin(random_angle) * movement_radius;

		if point_distance(x, y, target_x, target_y) > 5 {
			move_towards_point(target_x, target_y, 5);
		} else speed = 0;

		frames_until_next_direction_change = direction_change_interval;
	} else {
		frames_until_next_direction_change--;
	}

	

}

