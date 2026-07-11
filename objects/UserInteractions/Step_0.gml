if(keyboard_check_pressed(ord("F"))){
	global.loadout.active = (global.loadout.active + 1) % array_length(global.loadout.slots);
	show_debug_message(global.loadout.active);
}
