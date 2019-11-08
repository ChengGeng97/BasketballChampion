total_phase_HP = 600;
halfHealth = total_phase_HP / 2;
oneEighthHealth = total_phase_HP / 8;
HP = 600;
phase_name = "ENEMY STAND"

instance_create_depth(GameManager.x_pad + 350, 350, 1, Level2OldMole);
instance_create_depth(GameManager.x_pad + 350, 96, 1, Level2Phase2Enemy);

Phase = LevelTwoPhase.TWO;
