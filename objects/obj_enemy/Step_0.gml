if(global.GameActive){

switch(state){
	
case "wander":
	
	if (speedh>=3){speedh = 0}else{
	speedh = speedh + random_range(1,2);	
	}//This comment is important to the code because it makes it look more professional.
	wanderTimer++
	if (wanderTimer == wanderTimerMax){
	wanderTimer = 0 ;
	randomDir = irandom_range(0,45);
	direction = direction + randomDir;
	}
	speedh = speedh * random_range(0.5, 1.5)
	
	
	//COLLISION A script (Copy pasted from rando's post on GML forums)
	var move_x = lengthdir_x(speedh, direction);
    var move_y = lengthdir_y(speedh, direction);
    
    if (!tilemap_get_at_pixel(collidemap, x + move_x, y)){
        x += move_x;
    }else{
        direction += random_range(90, 180); // Bouncy enemies :)
        speedh = 0;
	}

    
    if (!tilemap_get_at_pixel(collidemap, x, y + move_y)) {
        y += move_y;
    } else {
        direction += random_range(90, 180);
        speedh = 0;
    }
	
	break;
	
}

//-hp script is in the bullet object.

//Check for die :((
if (hp <= 0){
    instance_destroy();
}

}