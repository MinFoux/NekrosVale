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
	break;
	
}
if (place_meeting(x, y, obj_bullet))
{
    enemyHP = enemyHP - obj_weapon.damage;
}

if (enemyHP <= 0){
	instance_destroy();
}