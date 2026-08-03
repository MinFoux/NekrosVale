state = "wander";
wanderTimer = 0
wanderTimerMax = 60
speedh = 5;
direction = 0;
direction += irandom_range(-180, 180);
hp = 30;

collidemap = layer_tilemap_get_id("collisionTiles");

//Offset
sprite_set_offset(sprite_index, sprite_get_width(sprite_index)/2, sprite_get_height(sprite_index)/2);