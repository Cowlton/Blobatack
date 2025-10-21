function SideDown(){

image_angle = 0
// jumping acton
isGronded = place_meeting(x,y+4,groundObjects)
jumpkey = keyboard_check_pressed(ord("Q"));



if place_meeting(x,y+vsp,groundObjects){
		while !place_meeting(x,y+sign(vsp),groundObjects){
			y += sign(vsp)
		}
		
		if UpdatePort = true{
			PortUpdator();
		
		if canport = true && canport2 = true{
			audio_play_sound(move,10,false)
			
		if  !instance_exists(Shake) && !instance_exists(Shake2) && !instance_exists(Shake3){
			instance_create_layer(x,y,layer,Shake)
			}
		WallParical();
	
		}
	    canport = false
		canport2 = false
		}
		vsp = 0
	if place_meeting(x+hsp,y,groundObjects){
	while(!place_meeting(x+sign(hsp),y,groundObjects)){
		x += sign(hsp)
	}
	hsp = 0
	}
	
}

	if isGronded{ // when on the grond
canjump = 10;
canswitch = true
if sprite_index != Blobybob_frunt_spr{
sprite_index = IdleSprite
}
	
} else {
	sprite_index = UpSprite;
	canswitch = false
	canport = true
	instance_create_layer(x,y,layer,Trail_obj);
}


y += vsp //comit to move
if grv < 5{
vsp += grv;
}


}