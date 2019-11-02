total_phase_HP = 600;
halfHealth = total_phase_HP / 2;
oneEighthHealth = total_phase_HP / 8;
HP = 600;

enum Level3Phase3State
{
	IDLE, TELEPORT_START, TELEPORT_MIDST, TELEPORT_END, 
}

PhaseThreeState = Level3Phase3State.IDLE;

x = GameManager.x_pad + 350;
y = GameManager.y_pad + 300;

state_frame_counter = 0;
idle_frames = 240;
teleport_start_frames = 12;
teleport_midst_frames = 12;
teleport_end_frames = 12;
x_min = GameManager.x_pad + 200;
x_max = GameManager.x_pad + 500;
y_min = GameManager.y_pad + 100;
y_max = GameManager.y_pad + 300;

instance_create_depth(GameManager.x_pad + 350, GameManager.y_pad + 450, 0, BlackHoleCore);
instance_create_depth(GameManager.x_pad + 350, GameManager.y_pad + 450, 0, Level3Pattern3BulletSpawner);
instance_create_depth(GameManager.x_pad + 350, GameManager.y_pad + 450, 0, GravityRegion);

Phase = LevelThreePhase.THREE;
