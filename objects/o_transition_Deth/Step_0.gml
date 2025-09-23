

switch(state){
case statesD.OUT:
if (sub_image_index < imax + xmax){
sub_image_index += sub_image_index_inc;
}else{
	if CangoNext = true
	{
		
		state = statesD.IN
	CangoNext = false
	room_restart()
	}
	
}
break;
case statesD.IN:
if (sub_image_index > 0){
sub_image_index -= sub_image_index_inc;
}else{
	instance_destroy()
	if instance_exists(Player1)
	{
	Player1.canMove = true
	Player2.canMove = true
	}
	if instance_exists(Player_obj)
	{	
		
		Player_obj.canMove = true;
		
		with CoppyCat_obj{
			canMove = true;
		}
	}
}
break;
}

