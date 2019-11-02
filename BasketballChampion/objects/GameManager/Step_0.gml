/// @description This is meant to track state variables such as Score etc.
// You can write your code in this editor

var down_button_pressed = keyboard_check(ord("R"));

if (down_button_pressed) {
	room_restart();
	score = 0;
}
