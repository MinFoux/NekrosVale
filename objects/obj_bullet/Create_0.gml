 data = obj_weapon.weapon_data;

sprite_index = data.bulletType;
speed = data.bulletSpeed;
gunlength_bullet = obj_weapon.gunlength;
x = obj_weapon.x + lengthdir_x(gunlength_bullet, obj_weapon.image_angle);
y = obj_weapon.y + lengthdir_y(gunlength_bullet, obj_weapon.image_angle);
image_angle = obj_weapon.image_angle;
direction = image_angle;
maxLife = data.bulletLife;
rotateSpeed = data.bulletLife;
speed = data.bulletSpeed;
life = 1;

sprite_set_offset(sprite_index, sprite_get_width(sprite_index)/2, sprite_get_height(sprite_index)/2);