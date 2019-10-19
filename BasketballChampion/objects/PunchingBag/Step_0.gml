/// @description Insert description here
// You can write your code in this editor

x += chicky_speed;

if(x < 0 || x > room_width) {
	chicky_speed = -chicky_speed;
}

if (HP == 0) {
	show_debug_message("YOU WIN");
	HP -= 1;
}
