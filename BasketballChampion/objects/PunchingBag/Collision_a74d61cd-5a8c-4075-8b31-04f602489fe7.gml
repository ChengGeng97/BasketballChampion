/// @description Insert description here
// You can write your code in this editor
//if ball position near sprite, then

collided_with_football = !collided_with_football;

Football.x_direction = Football.x_direction * (-1);
Football.y_direction = Football.y_direction * (-1);

if (collided_with_football) {
	sprite_index = PunchingBagPlaceholderHit;
} else {
	sprite_index = PunchingBagPlaceholder;
}

HP -=1;
