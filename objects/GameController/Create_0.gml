//Initialize Data
global.perk_db = {};
global.perk_db.Touch_of_a_higher_being = {
    name : "Touch of a higher being",
    description : "When holding this gun, a message is sent to the 4th dimensional Gods called an \"Error\", which ruptures time and space as we know it."
};

global.perk_db.marmalade = {
    name : "Marmalade",
    description : "Bullets jam if fired too quickly."
};

global.perk_db.family_reunion = {
    name : "Family Reunion",
    description : "Enhanced effects when paired with a certain elderly firearm."
};

//Start game
timer = 0;
global.GameActive = true;

//Start Instances
instance_create_depth(0,0,3,obj_weapon_Data);
instance_create_depth(0,0,3, UserInteractions);
instance_create_depth(320,130,2,obj_player);
instance_create_depth(320,130,1,obj_weapon);