switch(state){
case Amstates.OUT:
if (sub_image_index < imax + xmax){
sub_image_index += sub_image_index_inc;
}else{
	
		
state = Amstates.IN

	
	
}
break;
case Amstates.IN:
if (sub_image_index > 0){
sub_image_index -= sub_image_index_inc;
}else{
	instance_destroy()
	
}
break;
}