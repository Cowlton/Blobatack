if place_meeting(x,y,blobytheglob_obj){
	MyThing = blobytheglob_obj
}
if place_meeting(x,y,goste){
	MyThing = goste
}

if canSpawn && !place_meeting(x,y, blobytheglob_obj) && !place_meeting(x,y, goste){
	instance_create_layer(x + 32,y + 32,layer,MyThing)
	canSpawn = false
}