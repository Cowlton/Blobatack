if place_meeting(x,y,Player_obj){
	
	if !Player_obj.isGronded  && (Player_obj.sid = 4 || Player_obj.sid = 3)  {
	
	active = true
	
	}else{
		active = false
	}
	if Player_obj.sid = 4{
	
	faceing = 1
	
	}
	if Player_obj.sid = 3{
	
	faceing = -1
	
	}
}else if place_meeting(x,y,CoppyCat_obj){
	
	if !CoppyCat_obj.isGronded  && (CoppyCat_obj.sid = 4 || CoppyCat_obj.sid = 3)  {
	
	active = true
	
	}else{
		active = false
	}
	if CoppyCat_obj.sid = 4{
	
	faceing = 1
	
	}
	if CoppyCat_obj.sid = 3{
	
	faceing = -1
	
	}
}else{
	active = false
	
}

if active = true {
if Pause.pause{
image_speed = 0;	
}else{
image_speed = 1
}
}



