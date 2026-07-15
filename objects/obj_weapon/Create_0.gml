//Initialize
x = 0;
y = 0;

// Player Create
global.loadout = {
    slots: ["lassswish", "vortex_launcher_001","versa"],  // variable length, player can add/remove
    active: 1                          // index of currently held weapon
}

currentWeapon = global.loadout.active;

//Gun Init
currentWeapon = "noGun";
currentWeapon = "vortex_launcher_001";
//currentWeapon = "versa";

//Import current weapon data
setWeapon()

//Weapon variable init
direction = 0;
fire_timer = 0;
firing = 0;
aim_angle = 0;


//Offsets
gunlength = weapon_data.barrelLength;
x = obj_player.x +offset_x;
y = obj_player.y +offset_y;

function setWeapon(){
	//Get data of selected weapon
	weapon_data = variable_struct_get(global.weapon_db, currentWeapon);
	
	//Make it look like the weapon
	sprite_index = weapon_data.sprite;
	
	//Offset of gun (Where it goes on the player i think)
	if(weapon_data.barrel_Y != "HALF"){
		sprite_set_offset(sprite_index, sprite_get_width(sprite_index)/2, weapon_data.barrel_Y);
	}else{
		sprite_set_offset(sprite_index, sprite_get_width(sprite_index)/2, sprite_get_height(sprite_index)/2);
	}

	//Variables that come from the new data
	offset_y = weapon_data.yOffset;
	offset_x = weapon_data.xOffset;
	displayOffset_y = weapon_data.displayOffset_y;
	bulletDelay = weapon_data.cooldown;
	damage = weapon_data.damage;
}