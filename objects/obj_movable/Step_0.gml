//Borrowed all of this from some guy on the forum.
//In theory, this is the bare bones.
if(global.GameActive){

var _left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var _right = keyboard_check(vk_right)|| keyboard_check(ord("D"));
var _up = keyboard_check(vk_up)|| keyboard_check(ord("W"));
var _down = keyboard_check(vk_down)|| keyboard_check(ord("S"));
var _hspd = _right - _left;
var _vspd = _down - _up;


if (_hspd != 0 || _vspd != 0)
{
    var _spd = 4;
    var _dir = point_direction(0, 0, _hspd, _vspd);
    var _xadd = lengthdir_x(_spd, _dir);
    var _yadd = lengthdir_y(_spd, _dir);
	
	if (!place_meeting(x + _xadd, y, collidemap)){
    x += _xadd;
	}
	
	if (!place_meeting(x, y+_yadd, collidemap)){
    y += _yadd;
	}
	
	//Sprite changing based on direction
	if(sign(_yadd) == -1){
		sprite_index = spr_chunk_backward;
		spriteFace = "away"
	}
	
	if(sign(_yadd) == 1){
		sprite_index = spr_chunk_forward;
		spriteFace = "towards"
	}
	sprite_set_offset(sprite_index, sprite_get_width(sprite_index)/2, sprite_get_height(sprite_index)/2);    
}

}