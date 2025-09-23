switch(state){
case states.OUT:
if (sub_image_index < imax + xmax){
sub_image_index += sub_image_index_inc;
}else{
	if CangoNext = true
	{
	
	state = states.IN
	CangoNext = false
	room_goto_next()
	
	}
	
}
break;
case states.IN:
if (sub_image_index > 0){
	
if canContinue == true{
sub_image_index -= sub_image_index_inc;
}else{
	if keyboard_check(ord("C")){
		canContinue = true
	}
}
}else{
	instance_destroy()
	if instance_exists(Player1)
	{
	Player1.canMove = true
	Player2.canMove = true
	}
	if instance_exists(Player_obj)
	{
		with Player_obj{
			canMove = true;
		}
		with CoppyCat_obj{
			canMove = true;
		}
	}
}
break;
}

if instance_exists(Shake)
{
	instance_destroy(Shake)
}
if instance_exists(Shake2)
{
	instance_destroy(Shake2)
}
if instance_exists(Shake3)
{
	instance_destroy(Shake3)
}