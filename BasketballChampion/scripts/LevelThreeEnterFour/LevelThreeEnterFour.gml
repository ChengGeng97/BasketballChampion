visible = true;
total_phase_HP = 700;
halfHealth = total_phase_HP / 2;
oneEighthHealth = total_phase_HP / 8;
HP = 700;
phase_name = "Sky-Tearing Meteor";

enum Level3MeteorPhase
{
	MOVING, CHARGING, FIRE
}

MeteorPhaseState = Level3MeteorPhase.MOVING;

x = GameManager.x_pad + 350;
y = GameManager.y_pad + 100;

movement_speed = 1;
frame_counter = 230;

moving_state_frames = 240;
charging_state_frames = 60;
firing_state_frames = 50;

Phase = LevelThreePhase.FOUR;
