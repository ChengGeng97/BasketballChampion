/// @description This is meant to track state variables such as Score etc.
// You can write your code in this editor

/*
var restart_button_pressed = keyboard_check(ord("R"));

if (restart_button_pressed) {
	room_restart();
	score = 0;
}
*/

switch (room_state)
{
	case RoomState.PAUSE:
		if (!instance_exists(PauseStateOverlay))
		{
			instance_destroy(EnemyDefeatedOverlay);
			instance_create_depth(0, 0, 0, PauseStateOverlay);
		}
	
		if (keyboard_check_pressed(vk_escape)) 
		{
			// Press escape to continue the game
			instance_activate_all();
			room_state = RoomState.ONGOING;
			instance_destroy(PauseStateOverlay);
		}	
		break;
		
	case RoomState.ONGOING:
		if (keyboard_check_pressed(vk_escape)) 
		{
			// Press escape to pause the game
			
			//Managers
			instance_deactivate_object(BallManager);
			
			// Level 1 Objects
			instance_deactivate_object(Level1AgainEnemy);
			instance_deactivate_object(TennisBall);
			instance_deactivate_object(TennisNet);
			
			// Level 2 Objects
			instance_deactivate_object(Level2Manager);
			instance_deactivate_object(Level2Phase1Hole);
			instance_deactivate_object(Poloball);
			instance_deactivate_object(Level2OldMole);
			instance_deactivate_object(Level2Phase2Enemy);
			instance_deactivate_object(LeftGlove);
			instance_deactivate_object(RightGlove);
			instance_deactivate_object(RightEyeFlash);
			instance_deactivate_object(LeftEyeFlash);
			instance_deactivate_object(Level2EnemyDizzy);
		
			// Level 3 Objects
			instance_deactivate_object(Level3Enemy);
			instance_deactivate_object(Level3Pattern1OrbitalSpawner);
			instance_deactivate_object(Level3Pattern1BulletSpawner);
			instance_deactivate_object(Level3Pattern3BulletSpawner);
			instance_deactivate_object(GravityLevelBoundsBulletManager);
			instance_deactivate_object(Level3Pattern3BowlingAttackSpawner);
			instance_deactivate_object(BowlingBall);
			instance_deactivate_object(GravityRegion);
			instance_deactivate_object(BlackHoleCore);
			instance_deactivate_object(Level3Pattern4BulletSpawner);
			instance_deactivate_object(BowlingMeteor);
			instance_deactivate_object(MeteorWallExplosion);
			
			// Player Objects
			instance_deactivate_object(Player2);
			instance_deactivate_object(PlayerDamageHitbox);
			instance_deactivate_object(Football);
			
			// Tutorial Objects
			instance_deactivate_object(TutorialPlayer2);
			instance_deactivate_object(TutorialFootball);
			instance_deactivate_object(TutorialWalkingManager);
			instance_deactivate_object(Cone);
			instance_deactivate_object(TutorialGoal);
			instance_deactivate_object(Disc);
			instance_deactivate_object(TutorialShootingManager);
			instance_deactivate_object(Pond);
			instance_deactivate_object(TutorialDashingManager);
			instance_deactivate_object(TutorialPunchingBag);
			instance_deactivate_object(TutorialClearingManager);
			
			// Bullets
			instance_deactivate_object(BasicBullet);
			instance_deactivate_object(UnclearableBullet);
			instance_deactivate_object(DieWhenHitBlackHoleBullet);
			instance_deactivate_object(ActivatableBounceOffWallBullet);
			
			// Reflective Surfaces
			instance_deactivate_object(HorizontalReflectiveSurface);
			instance_deactivate_object(VerticalReflectiveSurface);
			
			// Effects
			instance_deactivate_object(Hitspark);
			instance_deactivate_object(Blockspark);
			instance_deactivate_object(Deathspark);
			instance_deactivate_object(ExclamationHit);
			
			// UI
			instance_deactivate_object(MainGameGUIPowerBar);
			
			// Change room state
			room_state = RoomState.PAUSE;
		}
		break;
		
	case RoomState.DEAD:
		if (!instance_exists(DeadStateOverlay))
		{
			instance_create_depth(0, 0, 0, DeadStateOverlay);
		}
		break;

	case RoomState.ENEMY_DEFEATED:
		if (!instance_exists(EnemyDefeatedOverlay))
		{
			instance_create_depth(0, 0, 0, EnemyDefeatedOverlay);
		}
		break;
		
	case RoomState.STAGE_CLEAR:
		if (!instance_exists(StageClearOverlay))
		{
			instance_destroy(EnemyDefeatedOverlay);
			instance_create_depth(0, 0, 0, StageClearOverlay);
		}
		
		if (keyboard_check_pressed(vk_enter))
		{
			room_goto(global.room_sequence[++global.room_index]);
			show_debug_message("MOVE");
		}
		break;
}
