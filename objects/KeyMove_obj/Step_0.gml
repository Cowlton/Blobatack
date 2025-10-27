image_angle += rotationSpeed;
move_towards_point(myGuy.x,myGuy.y,spd)
x+= ofsetSpeedx
y+= ofsetSpeedy



if place_meeting(x,y,myGuy){
	var turnkey = instance_create_layer(myGuy.x,myGuy.y,layer,Key_turn_obj)
	turnkey.KeyBlock = myGuy;
	instance_destroy()
	
	
}