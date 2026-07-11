state = "wander";
wanderTimer = 0
wanderTimerMax = 60
speed = 5;
direction = 0;
direction += irandom_range(-180, 180);
hp = 30;

collidemap = layer_tilemap_get_id("collisionTiles");