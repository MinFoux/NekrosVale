//Import data
data = obj_weapon.weapon_data;
collidemap = layer_tilemap_get_id("collisionTiles");
 
//initialize based on data

	//Reals (and also gunlength)
	gunlength_bullet = data.barrelLength;
	x = obj_weapon.x + lengthdir_x(gunlength_bullet, obj_weapon.image_angle) + lengthdir_x(data.barrel_Y, obj_weapon.image_angle + 90);
	y = obj_weapon.y + lengthdir_y(gunlength_bullet, obj_weapon.image_angle) + lengthdir_y(data.barrel_Y, obj_weapon.image_angle + 90);
	image_angle = obj_weapon.image_angle;
	direction = image_angle;
	sprite_index = data.bulletType;
	
	//THIS IS THE SPEED (DONT LOSE IT AGAIN)
	speed = data.bulletSpeed;

	//Variables
	maxLife = data.bulletLife;
	rotateSpeed = data.bulletRotateSpeed;
	life = 1;
	damage = data.damage;
	

//Initialize bullet special types and extra volotile/variable values.
scr_bullet_perk_check();
//Makes the middle of the sprite the middle of the sprite
sprite_set_offset(sprite_index, sprite_get_width(sprite_index)/2, sprite_get_height(sprite_index)/2);