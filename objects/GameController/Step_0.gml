//Temporary
if(global.GameActive){
	timer++;
	if(timer == 100){
		instance_create_depth(640, 250, 0, obj_testEnemy);
		timer = 0;
	}
}




