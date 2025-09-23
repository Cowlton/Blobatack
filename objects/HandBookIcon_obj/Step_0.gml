if (instance_exists(Player_obj)){
	
	if (point_distance(x,y,Player_obj.x,Player_obj.y) <= 100){
		image_alpha = 0;
	}else if(point_distance(x,y,Player_obj.x,Player_obj.y) <= 200){
		image_alpha = 0.5;
		
	}else if(point_distance(x,y,Player_obj.x,Player_obj.y) <= 300){
		image_alpha = 0.7;
		
	}else{
		image_alpha = 1;
	}
	
}else{
image_alpha = 0;	
}