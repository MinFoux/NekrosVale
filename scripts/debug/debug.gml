function debug(){
	
	if(global.debug){
	// Draw the object's sprite first
	draw_self();
	
	// Visual styles
	draw_set_color(c_red);
	draw_set_alpha(0.4);
	
	
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
	draw_set_alpha(1.0);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	
	// Be unobtrusive
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	}
}