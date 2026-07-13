image_xscale = 1.2;
image_yscale = 1.2;

draw_self()


if (spriteFace == "away") {
    obj_weapon.depth = depth + 1;
} else {
    obj_weapon.depth = depth - 1;
}