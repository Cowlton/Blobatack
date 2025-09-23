



sidedown = function(){
image_angle = 0
//jumping acton
isGronded = place_meeting(x,y+4,[ground_ob, movingGround, lazzer_ob, onewayDOWN])
jumpkey = keyboard_check_pressed(ord("Q"));

if place_meeting(x,y+vsp,[ground_ob, movingGround, onewayDOWN]){
		while !place_meeting(x,y+sign(vsp),[ground_ob, movingGround, lazzer_ob, onewayDOWN]){
			y += sign(vsp)
		}
		if instance_exists(bossfirtEn) && canport = true && canport2 = true{
		
			with bossfirtEn step +=1
			
		}
		if instance_exists(Gohst_obj) && canport = true && canport2 = true{
			Gohst_obj.step +=1
		}
		if canport = true && canport2 = true{
			audio_play_sound(move,10,false)
		}
	    canport = false
		canport2 = false
		vsp = 0
	}
	if place_meeting(x+hsp,y,[ground_ob, movingGround, lazzer_ob, onewayDOWN]){
	while(!place_meeting(x+sign(hsp),y,[ground_ob, movingGround, lazzer_ob, onewayDOWN])){
		x += sign(hsp)
	}
	hsp = 0
	}
	if isGronded{ // when on the grond
canjump = 10;
canswitch = true


	
} else {
	canjump -= 1;
	canswitch = false
	canport = true
	instance_create_layer(x,y,layer,Trail_obj);
}


if canjump > 0 && jumpkey{ // normal jump
	vsp = 0;
	canjump = 0;

	vsp -= jumphith;
}


y += vsp //comit to move
if grv < 5{
vsp += grv;
}
}


sideup = function(){
image_angle = 180
//jumping acton

isGronded = place_meeting(x,y-4,[ground_ob, movingGround, lazzer_ob, onewayUP])
jumpkey = keyboard_check_pressed(ord("Q"));
if place_meeting(x,y-vsp,[ground_ob, movingGround, lazzer_ob, onewayUP]){
		while !place_meeting(x,y-sign(vsp),[ground_ob, movingGround, lazzer_ob, onewayUP]){
			y -= sign(vsp)
		}
		if instance_exists(bossfirtEn) && canport = true && canport2 = true{
		
			with bossfirtEn step +=1
			
	    }
		if instance_exists(Gohst_obj) && canport = true && canport2 = true{
		with Gohst_obj step +=1
	}
		if canport = true && canport2 = true{
			audio_play_sound(move,10,false)
		}
	    canport = false
		canport2 = false
		vsp = 0
	}
	if place_meeting(x+hsp,y,[ground_ob, movingGround, lazzer_ob, onewayUP]){
	while(!place_meeting(x+sign(hsp),y,[ground_ob, movingGround, lazzer_ob, onewayUP])){
		x += sign(hsp)
	}
	hsp = 0
	}
if isGronded{ // when on the grond
canjump = 10;
canswitch = true

	
} else {
	canjump -= 1;
	canswitch = false
	canport = true
	instance_create_layer(x,y,layer,Trail_obj);
}


if canjump > 0 && jumpkey{ // normal jump
	vsp = 0;
	canjump = 0;
	vsp -= jumphith;
}

y -= vsp //comit to move
if grv < 5{
vsp += grv;
}
}
sidelt = function()
{
	image_angle = -90
	if place_meeting(x,y,springLT){
	 sid = 4
		side = sidert
	}
	isGronded = place_meeting(x-4,y,[ground_ob, movingGround, lazzer_ob, onewayLT])

jumpkey = keyboard_check_pressed(ord("Q"));
if place_meeting(x+hsp,y,[ground_ob, movingGround, lazzer_ob, onewayLT]){
		while !place_meeting(x +sign(hsp),y,[ground_ob, movingGround, lazzer_ob, onewayLT]){
			x += sign(hsp)
		}
		if instance_exists(bossfirtEn) && canport = true && canport2 = true{
		
		with bossfirtEn step +=1
	
	}
	if instance_exists(Gohst_obj) && canport = true && canport2 = true{
		with Gohst_obj step +=1
	}
		if canport = true && canport2 = true{
			audio_play_sound(move,10,false)
		}
	    canport = false
		canport2 = false
		hsp = 0
	}
	if place_meeting(x,y+vsp,[ground_ob, movingGround, lazzer_ob, onewayLT]){
	while(!place_meeting(x,y+sign(vsp),[ground_ob, movingGround, lazzer_ob, onewayLT])){
		y += sign(vsp)
	}
	vsp = 0
	}
	

	if isGronded{ // when on the grond
canjump = 10;
canswitch = true


	
} else {
	canjump -= 1;
	canswitch = false
	canport = true
	instance_create_layer(x,y,layer,Trail_obj);
}


if canjump > 0 && jumpkey{ // normal jump
	vsp = 0;
	canjump = 0;
	hsp += jumphith;
}


x += hsp //comit to move
if grv < 5{
hsp -= grv;
}
}
sidert = function(){
	image_angle = 90

	isGronded = place_meeting(x+4,y,[ground_ob, movingGround, onewayRT, lazzer_ob])
jumpkey = keyboard_check_pressed(ord("q"));
if place_meeting(x-hsp,y,[ground_ob, movingGround, onewayRT, lazzer_ob]){
		while !place_meeting(x -sign(hsp),y,[ground_ob, movingGround, onewayRT, lazzer_ob]){
			x -= sign(hsp)
		}
	if instance_exists(bossfirtEn) && canport = true && canport2 = true{
		
		with bossfirtEn step +=1
		
	}
	if instance_exists(Gohst_obj) && canport = true && canport2 = true{
		with Gohst_obj step +=1
	}
		if canport = true && canport2 = true{
			audio_play_sound(move,10,false)
		}
	    canport = false
		canport2 = false
		hsp = 0
	}
	if place_meeting(x,y+vsp,[ground_ob, movingGround, onewayRT, lazzer_ob]){
	while(!place_meeting(x,y+sign(vsp),[ground_ob, movingGround, onewayRT, lazzer_ob])){
		y += sign(vsp)
	}
	vsp = 0
	}
	

if isGronded{ // when on the grond
canjump = 10;
canswitch = true

} else {
	canjump -= 1;
	canswitch = false
	canport = true
	instance_create_layer(x,y,layer,Trail_obj);
}


if canjump > 0 && jumpkey{ // normal jump
	vsp = 0;
	canjump = 0;
	hsp += jumphith;
}


x -= hsp //comit to move
if grv < 5{
hsp -= grv;
}
}



/*if redy = false{
	
	while place_meeting(x,y,Blobybob_obj){
	redy = true
}*/
	



if sid = 1{
side = sidedown

}
if sid = 2{
	side = sideup
}
if sid = 3{
	side = sidelt
	faceing = -1
}
if sid = 4{
	side = sidert
	faceing = 1
}
side()
