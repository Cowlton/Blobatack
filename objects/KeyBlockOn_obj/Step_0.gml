if !instance_exists(Key_obj){
	if canCreate = true{
	var keymove = instance_create_layer(KeyX,KeyY,layer,KeyMove_obj)
	keymove.myGuy = self;
	canCreate = false;
}
	
}else{
image_index = 0;	
}