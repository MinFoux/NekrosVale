//Initialize Data
global.perk_db = {};

//Initialize the perks.
perk_DB_Refresh()

//Start game (Not really)
timer = 0;
global.GameActive = true;

//Start Instances (This is where the game starts)
instance_create_depth(0,0,3,obj_weapon_Data);
instance_create_depth(0,0,3, UserInteractions);
instance_create_depth(640,130,2,obj_player);
instance_create_depth(320,130,1,obj_weapon);
