//Import data
data = obj_weapon.weapon_data;
collidemap = layer_tilemap_get_id("collisionTiles");
 
//initialize based on data

	//Reals (and also gunlength)
	gunlength_bullet = obj_weapon.gunlength;
	x = obj_weapon.x + lengthdir_x(gunlength_bullet, obj_weapon.image_angle);
	y = obj_weapon.y + lengthdir_y(gunlength_bullet, obj_weapon.image_angle);
	image_angle = obj_weapon.image_angle;
	direction = image_angle;
	sprite_index = data.bulletType;
	
	//THIS IS THE SPEED (DONT LOSE IT)
	speed = data.bulletSpeed;

	//Variables
	maxLife = data.bulletLife;
	rotateSpeed = data.bulletRotateSpeed;
	life = 1;
	damage = data.damage;
	
	scr_bullet_perk_check();

//This does the thing. I forgot why its here but it fixes a lot of directional stuff.
sprite_set_offset(sprite_index, sprite_get_width(sprite_index)/2, sprite_get_height(sprite_index)/2);
