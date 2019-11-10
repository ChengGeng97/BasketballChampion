/// @description Insert description here
// You can write your code in this editor

mainMenuButton = instance_create_depth(1284, 650, 0, RoomChangingButtonResetLives);
mainMenuButton.text = "Return to Main Menu";
mainMenuButton.scale = 2;
mainMenuButton.room_to_go = RealTitleScreen;
