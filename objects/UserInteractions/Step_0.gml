if(keyboard_check_pressed(ord("F"))){
	weaponIndex++;
	if(weaponIndex >= 3){
		weaponIndex = 1;
	}
}