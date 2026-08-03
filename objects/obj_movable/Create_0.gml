sprite_index = spr_chunk_forward;
spriteFace = "towards"

//Offset
sprite_set_offset(sprite_index, sprite_get_width(sprite_index)/2, sprite_get_height(sprite_index)/2);

//Init
speed = 0;
_hspd = 0
_vspd = 0

//Collision layer set
collidemap = layer_tilemap_get_id("collisionTiles");