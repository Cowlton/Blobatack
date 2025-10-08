if show = true{
	
	if wait > 0{
		wait --	
	}else{	
		if (image_alpha < 1){
			image_alpha += 0.1
		}else{
		image_alpha = 1;
		}
	
		with restartSpot{
			visible = true	
		}
	}
	
}else{

wait = 20;	
image_alpha = 0;

}