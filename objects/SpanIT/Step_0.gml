if place_meeting(x,y,Vampier_obj){
	MyThing = Vampier_obj
}
if place_meeting(x,y,Gohst_obj){
	MyThing = Gohst_obj
}

if canSpawn && !place_meeting(x,y, Vampier_obj) && !place_meeting(x,y, Gohst_obj){
	instance_create_layer(x + 32,y + 32,layer,MyThing)
	canSpawn = false
}