image_angle += rotationSpeed;
move_towards_point(myGuy.x,myGuy.y,spd)
x+= ofsetSpeedx
y+= ofsetSpeedy



if place_meeting(x,y,myGuy){
	instance_destroy()
	myGuy.image_index = 1;
	
}