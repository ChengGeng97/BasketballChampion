/// @description Insert description here
// You can write your code in this editor

var continueButton = instance_create_depth(414, 450, 0, RoomChangingButtonResetLives);
continueButton.text = "Retry this Level!";
continueButton.scale = 2;
continueButton.room_to_go = room;

var restartButton = instance_create_depth(414, 550, 0, RoomChangingButtonResetLives);
restartButton.text = "Retry from Game Start";
restartButton.scale = 2;
restartButton.room_to_go = Week9_Level1;

var mainMenuButton = instance_create_depth(414, 650, 0, RoomChangingButtonResetLives);
mainMenuButton.text = "Return to Main Menu";
mainMenuButton.scale = 2;
mainMenuButton.room_to_go = Title_Screen;
