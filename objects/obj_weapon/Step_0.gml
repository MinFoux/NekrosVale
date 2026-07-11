//Keep updated on currentWeapon
if(currentWeapon != array_get(global.loadout.slots, global.loadout.active)){
	currentWeapon = array_get(global.loadout.slots, global.loadout.active);
	setWeapon()
}

//Rotation and Position
function point(){
	y = obj_player.y +offset_y;
	image_angle = point_direction( x,y,mouse_x,mouse_y );
	aim_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
	image_angle = aim_angle;
}

//Flipping
if (mouse_x < obj_player.x) {
    image_yscale = -abs(image_yscale);
    x = obj_player.x + -abs(offset_x);
	point()
} else {
    image_yscale = abs(image_yscale);
    x = obj_player.x+ abs(offset_x);
	point()
}

//Check for shot
fire_timer += 1;
firing = false;
if (weapon_data.fire_mode == "auto")
{
    firing = mouse_check_button(mb_left);
}
else if (weapon_data.fire_mode == "semi")
{
    firing = mouse_check_button_pressed(mb_left);
}

//Shoot
if (fire_timer >= weapon_data.cooldown && firing)
{
    fire_timer = 0;
    instance_create_depth(x, y, -100, obj_bullet);
}
	
if(fire_timer>bulletDelay&&firing){
	fire_timer = 0;
	instance_create_depth(x, y, -100, obj_bullet);
}