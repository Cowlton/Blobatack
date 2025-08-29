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
}else if place_meeting(x,y,Blobybob_bad_obj){
	
	if !Blobybob_bad_obj.isGronded  && (Blobybob_bad_obj.sid = 4 || Blobybob_bad_obj.sid = 3)  {
	
	active = true
	
	}else{
		active = false
	}
	if Blobybob_bad_obj.sid = 4{
	
	faceing = 1
	
	}
	if Blobybob_bad_obj.sid = 3{
	
	faceing = -1
	
	}
}else{
	active = false
	
}

if active = true {
	image_speed  = 1
}

