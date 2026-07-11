switch(state){
	case "wander":
	if (speed>=3){speed = 0}else{
	speed = speed + irandom_range(1,2);	
	}
	wanderTimer++
	if (wanderTimer == wanderTimerMax) {
	wanderTimer = 0 ;
	randomDir = irandom_range(0,45);
	direction = direction + randomDir;
	}
	speed = speed * irandom_range(0.5, 1.5)
	
	
	//COLLISION A
	var move_x = lengthdir_x(speed, direction);
    var move_y = lengthdir_y(speed, direction);
    
    if (!place_meeting(x + move_x, y, collidemap)) {
        x += move_x;
    }else{
        direction += irandom_range(90, 180); // Bouncy enemies :)
        speed = 0;
    }
    
    if (!place_meeting(x, y + move_y, collidemap)) {
        y += move_y;
    } else {
        direction += irandom_range(90, 180);
        speed = 0;
    }
	
	break;
	
}

//-hp script is in the bullet object.

//Check for die :((
if (hp <= 0){
	instance_destroy();
}