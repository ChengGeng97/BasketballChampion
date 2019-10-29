movement_speed = 1;
HP = 600;
totalHP = 600;

Phase = LevelThreePhase.ONE;

orbital_off_frames_max = 30;
orbital_off_frame_counter = 0;

enum LevelThreePhaseOneState
{
	ORBITAL_ON, ORBITAL_FIRING, ORBITAL_OFF, ORBITAL_SUMMON
}

PhaseOneState = LevelThreePhaseOneState.ORBITAL_SUMMON;
