HP = 600;

enum Level3Phase3State
{
	IDLE, TELEPORT_START, TELEPORT_MIDST, TELEPORT_END, 
}

PhaseThreeState = Level3Phase3State.IDLE;

x = 350;
y = 300;

state_frame_counter = 0;
idle_frames = 240;
teleport_start_frames = 12;
teleport_midst_frames = 12;
teleport_end_frames = 12;
x_min = 200;
x_max = 500;
y_min = 100;
y_max = 300;

instance_create_depth(350, 450, 0, BlackHoleCore);
instance_create_depth(350, 450, 0, Level3Pattern3BulletSpawner);
instance_create_depth(350, 450, 0, GravityRegion);

Phase = LevelThreePhase.THREE;
