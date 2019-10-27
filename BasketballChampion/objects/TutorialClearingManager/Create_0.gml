/// @description Insert description here
// You can write your code in this editor

enum TutorialClearingState
{
	START, REACH_PLATE
}

manager_state = TutorialClearingState.START;

num_col = 40;
num_row = 40;

y_min = 200;
y_max = 700;
y_gap = y_max - y_min;

x_increm = room_width / num_col;
y_increm = y_gap / num_row;

x_total = 9;

for (var i = 0; i < num_col; i++) {
	y_total = y_min;
	
	for (var j = 0; j < num_row; j++) {
		instance_create_depth(x_total, y_total, 0, BasicBullet);		
		y_total += y_increm;
	}
	
	x_total += x_increm;
}
