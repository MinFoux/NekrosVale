//Game interface
if(keyboard_check_pressed(ord("F")) && global.GameActive){
	global.loadout.active = (global.loadout.active + 1) % array_length(global.loadout.slots);
	show_debug_message(global.loadout.active);
}

if(keyboard_check_pressed(vk_tab)){
	global.UI = !global.UI;
}


//Application type interface
if(keyboard_check_pressed(vk_f4)){
	global.fullscreen = !global.fullscreen
	window_set_fullscreen(global.fullscreen);
}

if(keyboard_check_pressed(vk_f11)){
	global.fullscreen = !global.fullscreen
	window_set_fullscreen(global.fullscreen);
}

if(keyboard_check_pressed(vk_enter) && keyboard_check(vk_alt)){
	global.fullscreen = !global.fullscreen
	window_set_fullscreen(global.fullscreen);
}

if(keyboard_check_pressed(vk_escape)){
	global.GameActive = !global.GameActive;
	
}

//Debug
if(keyboard_check(ord("Q"))){
	instance_create_depth(mouse_x, mouse_y, 5, obj_testEnemy)
}

if(keyboard_check_pressed(vk_f3)){
	if(global.debug){global.debug = false}else{global.debug = true};
}