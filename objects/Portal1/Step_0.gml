if (canportal1 = true){
	if spriteTime > 0{
	
	spriteTime --;
	}else{
		sprite_index = PortalBlock_spr	
	}
	
}else{
	spriteTime = 10;
sprite_index = PortalBlock_active_spr
}