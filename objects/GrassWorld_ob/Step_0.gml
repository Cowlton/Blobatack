

if active = true {
	if Pause.pause{
image_speed = 0;	
}else{
image_speed = 1
}
}

if global.wind == true && shouldSet == true{
	
	alarm_set(0,distance/10)
	shouldSet = false;
}