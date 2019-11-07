total_phase_HP = 700;
halfHealth = total_phase_HP / 2;
oneEighthHealth = total_phase_HP / 8;
HP = 700;
phase_name = "Descent From Orbit";

movement_speed = 1;

Phase = LevelThreePhase.ONE;

orbital_off_frames_max = 30;
orbital_off_frame_counter = 0;

enum LevelThreePhaseOneState
{
	ORBITAL_ON, ORBITAL_FIRING, ORBITAL_OFF, ORBITAL_SUMMON
}

PhaseOneState = LevelThreePhaseOneState.ORBITAL_SUMMON;
