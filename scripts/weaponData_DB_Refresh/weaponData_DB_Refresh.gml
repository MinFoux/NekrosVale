function weaponData_DB_Refresh(){
	
	global.weapon_db.noGun = {
	//Data for the gun
    name : "No Gun",
    sprite : spr_NoGun,
	
    damage : 0,
    cooldown : 9999,
	fire_mode : "semi",
	bulletType : spr_bullet,
	bulletLife : 0,
	bulletSpeed : 0,
	bulletRotateSpeed : 0,
	barrelLength : 0,
	barrel_Y : 2,
	
	//What the player sees
    rarity : "Kinda rare I dunno",
    manufacturer : "The Man Himself",
    description : "If you are reading this, something went very, very wrong.",
	
	//Where it appears on the player model
	xOffset : 30,
	yOffset : -50,
	displayOffset_y : 0,
	displayOffset_x : 0,
	
	//Special gameplay doohickeys
	perks : [global.perk_db.Touch_of_a_higher_being]

};
global.weapon_db.vortex_launcher_001 = {
    name : "Vortex Launcher 001",
    sprite : spr_VortexLauncher001,
	
    damage : 15,
    cooldown : 35,
	fire_mode : "auto",
	bulletType : spr_vortexNoAnim,
	bulletLife : 100,
	bulletSpeed : 2,
	bulletRotateSpeed : 1,
	barrelLength : 45,
	barrel_Y : "HALF",

    rarity : "Common",
    manufacturer : "Masse Electronics",
    description : "Can't go wrong with the basics.",
	
	xOffset: 0,
	yOffset : 8,
	displayOffset_y : 0,
	displayOffset_x : "HALF",
	
	perks: []
};

global.weapon_db.pistolGreen = {
    name : "Pistol Green",
    sprite : spr_PistolGreen,
	
    damage : 999,
    cooldown : 1,
	fire_mode : "auto",
	bulletType : spr_bullet,
	bulletLife : 50,
	bulletSpeed : 0,
	bulletRotateSpeed : 0,
	barrelLength : 200,
	barrel_Y : 2,

    rarity : "Kinda rare I dunno",
    manufacturer : "The Man Himself",
    description : "Completely balanced for optimal gameplay enjoyment.",
	
	xOffset : 21,
	yOffset : 2,
	displayOffset_y : 2,
	displayOffset_x : 0,
	
	perks : [global.perk_db.Touch_of_a_higher_being]
};

global.weapon_db.versa = {
   //Data for the gun
    name : "V.E.R.S.A.",
    sprite : spr_versa,
	
    damage : 5,
    cooldown : 10,
	fire_mode : "auto",
	bulletType : spr_bullet,
	bulletLife : 100,
	bulletSpeed : 15,
	bulletRotateSpeed : 0,
	barrelLength : 25,
	barrel_Y : 10,
	
	//What the player sees
    rarity : "Rare",
    manufacturer : "Vale W.D.",
    description : "100% Not made of denim, that would violate code.",
	
	//Where it appears on the player model
	xOffset : 0,
	yOffset : 10,
	displayOffset_y : 0,
	displayOffset_x : 0,
	
	//Special gameplay doohickeys
	perks : [global.perk_db.versa_tility]
};

global.weapon_db.lassswish = {
	    name : "Lass's Wish",
    sprite : spr_lassswish,
	
    damage : 40,
    cooldown : 1,
	fire_mode : "auto",
	bulletType : spr_darkBullet,
	bulletLife : 50,
	bulletSpeed : 4,
	bulletRotateSpeed : 0,
	barrelLength : 25,
	barrel_Y : 20,

    rarity : "Legendary",
    manufacturer : "Mass Ingenuity",
    description : "Of course I won’t die, Odin. Pandora would miss me too much.",
	
	xOffset : -5,
	yOffset : 10,
	displayOffset_y : -20,
	displayOffset_x : 0,
	
	perks : []
}

}