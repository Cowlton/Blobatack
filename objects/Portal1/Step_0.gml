if (canportal1 = true){
	if spriteTime > 0{
	
	spriteTime --;
	}else{
		hasFixedIndex = false;
		index = image_index;
		sprite_index = PortalBlock_spr	
	}
	
}else{
	if spriteTime > 0 {
		spriteTime --;
	
	}else{
		
		sprite_index = PortalBlock_active_spr
		if hasFixedIndex = false{
			image_index = index;
			hasFixedIndex = true;
		}
	
	
	spriteTime = 11;
	}

}