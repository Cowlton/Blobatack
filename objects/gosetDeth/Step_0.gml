if instance_exists(Player_obj){

if x >= Player_obj.x{
	faceing = -1
}
if x <= Player_obj.x{
	faceing = 1
}
}

if Pause.pause{
image_speed = 0;	
}else{
image_speed = 1	
}