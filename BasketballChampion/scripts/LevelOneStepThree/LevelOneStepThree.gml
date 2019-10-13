if (HP <= 0) {
	Phase = LevelOnePhase.DIE;
}
else 
{
	if (shoot_row_frame_counter >= shoot_row_period_frames) {
		shoot_row_frame_counter -= shoot_row_period_frames;
	
		var width = 700;
		var incremental_width = width / 35;
		var i = 0;

		while (i <= 700) {
			var bullet_id = instance_create_depth(i, 0, 0, BasicBullet);
			bullet_id.x_direction = 0;
			bullet_id.y_direction = 1;
			bullet_id.bullet_speed = 2;
			i += incremental_width;
		}
	
	}

	shoot_row_frame_counter++
}

