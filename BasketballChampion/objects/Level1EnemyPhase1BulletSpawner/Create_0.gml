/// @description Initialises the circle and the angles for each bullet
// You can write your code in this editor

// Pre-calculate spawning coordinates
xPositions[bullets_per_spawn] = 0;
yPositions[bullets_per_spawn] = 0;

var cumul_angle = 0.0;
var incremental_angle = 360.0 / bullets_per_spawn;

for(var i = 0; i < bullets_per_spawn; i++)
{
	xPositions[i] = dcos(cumul_angle);
	yPositions[i] = dsin(cumul_angle);
	cumul_angle += incremental_angle;
}
