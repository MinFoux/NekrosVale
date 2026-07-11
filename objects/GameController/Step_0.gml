if(global.GameActive){
	timer++;
	if(timer == 100){
		instance_create_depth(640, 250, 0, obj_testEnemy);
		timer = 0;
	}
}

if(keyboard_check(ord("Q"))){
	instance_create_depth(mouse_x, mouse_y, 5, obj_testEnemy)
}