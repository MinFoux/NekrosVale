function scr_bullet_perk_check(){
	
	if(array_contains(data.perks, global.perk_db.versa_tility)){
		
		if(random(11)>=9){			
			
			var rand = round(random(4));
			
			switch (rand){
			
				case 1:
			
					sprite_index = spr_blueSock;
					rotateSpeed = 2;
					speed = 1;
					damage += 2;
					break;
				
				case 2:
				
					sprite_index = spr_pinkSock;
					rotateSpeed = 2;
					speed = 1;
					damage += 2;
					break;
				
				case 3:
				
					sprite_index = spr_greenSock;
					rotateSpeed = 2;
					speed = 1;
					damage += 2;
					break;
					
				case 4:
				
					sprite_index = spr_vortexNoAnim;
					rotateSpeed = 2;
					speed = 1;
					damage += 4;
					break;
			
			}
			
			
		}
	}	
}