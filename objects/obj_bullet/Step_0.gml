if(global.GameActive){
	
	
life += 1;
if(life>=maxLife){
	instance_destroy();
}

image_angle += rotateSpeed;

var xx = x + lengthdir_x(speed, direction);
var yy = y + lengthdir_y(speed, direction);

// Check walls
if (collision_line(x, y, xx, yy, collidemap, false, true))
{
    instance_destroy();
    exit;
}

collision_line(0,0,0,0,0,0,0)

// Check enemies
var target = collision_line(x, y, xx, yy, obj_enemy, false, true);

if (target != noone)
{
    target.hp -= damage;
    instance_destroy();
    exit;
}

// Continue flying
x = xx;
y = yy;


}