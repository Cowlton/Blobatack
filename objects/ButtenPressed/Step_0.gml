if global.Switch = true{
	
	if image_alpha <= 1 && HasBeen1 == false{
	image_alpha += 0.15;
	}else if image_alpha >= 1{
		HasBeen1 = true;
		
	}
	if image_alpha >= 0 && HasBeen1 == true{
		image_alpha -= 0.15;
	}
	if HasBeen1 == true && image_alpha = 0{
		global.Switch = false;
		HasBeen1 = false;
	}
	
}