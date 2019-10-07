/// @description Obsolete code, don't mess with this object for now
// You can write your code in this editor

/*
Uncomment if we bring back the combo system

if(combo_meter > combo_meter_per_level )
{
	// Level Up
	combo_level += 1;
	
	// Deduct combo_meter
	combo_meter -= combo_meter_per_level;
	combo_meter -= 1;
}
else if (combo_level >= 0)
{
	if(combo_meter > 0)
	{
		if(combo_level > 0) {
			// Draining of combo_meter should scale with your level
			combo_meter -= combo_level;
		}
		else 
		{
			// To make sure combo goes down even a level 0
			combo_meter -= 1;
		}
	}
	
	if(combo_meter <= 0 && combo_level > 0)
	{
		// Level Down
		combo_level -= 1;

		// Increase the combo_meter
		combo_meter += combo_meter_per_level;
	}
}

show_debug_message("level: " + string(combo_level) + " | meter: " + string(combo_meter));
*/