/// @description Deletes the arrays to prevent mem leaks
// You can write your code in this editor

var i;
for(i = 0; i < bullets_per_spawn; i++) {
	xPositions[i] = 0;
	yPositions[i] = 0;
}
