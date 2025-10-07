atackfaceingrightkey = keyboard_check_pressed(ord("L")) || keyboard_check_pressed(vk_right)
atackfaceingleftkey =  keyboard_check_pressed(ord("J")) || keyboard_check_pressed(vk_left)


Key_Right = keyboard_check(ord("D"))
Key_Left = keyboard_check(ord("A")) 
Key_Up = keyboard_check(ord("W")) 
Key_Down = keyboard_check(ord("S")) 

if redy{
	
if mouse_check_button(2)
{
if instance_exists(DebugOBJ)
{
	self.x = mouse_x
	self.y = mouse_y	
}
}

if (gamepad_is_connected(global.GamePad))
{
		Key_Right = gamepad_axis_value(global.GamePad, gp_axislh) >= sensi || gamepad_button_check(global.GamePad,gp_padr)
		Key_Left = gamepad_axis_value(global.GamePad, gp_axislh) <= - sensi|| gamepad_button_check(global.GamePad,gp_padl)
		Key_Up = gamepad_axis_value(global.GamePad, gp_axislv) <= -sensi || gamepad_button_check(global.GamePad,gp_padu)
		Key_Down = gamepad_axis_value(global.GamePad, gp_axislv) >= sensi || gamepad_button_check(global.GamePad,gp_padd)
		atackfaceingrightkey = gamepad_axis_value(global.GamePad, gp_axisrh) >= sensi
		atackfaceingleftkey = gamepad_axis_value(global.GamePad, gp_axisrh) <= -sensi
		
        // do stuff with pad "i"
}



if !instance_exists(CantAme){ 


if atackfaceingrightkey{
	
	if faceing = -1{
	//alarm_set(0,5)
	sprite_index = Blobybob_spr;
	//sprite_index = Blobybob_frunt_spr
	faceing = 1
	}
	
}

if atackfaceingleftkey{
	
	if faceing = 1{
	//alarm_set(0,5)
	sprite_index = Blobybob_spr;
	//sprite_index = Blobybob_frunt_spr
	faceing = -1
	}
	
}
}

if redy = true{


sidedown = function(){
image_angle = 0
// jumping acton
isGronded = place_meeting(x,y+4,groundObjects)
jumpkey = keyboard_check_pressed(ord("Q"));



if place_meeting(x,y+vsp,groundObjects){
		while !place_meeting(x,y+sign(vsp),groundObjects){
			y += sign(vsp)
		}
		if instance_exists(bossfirtEn) && canport = true && canport2 = true{
		
			with bossfirtEn step +=1
			
		}
		if instance_exists(Sheald_obj) && canport = true && canport2 = true{
			with Sheald_obj step +=1
		}
		if instance_exists(Gohst_obj) && canport = true && canport2 = true{
		with Gohst_obj step +=1
		
		}
		if instance_exists(OnAndOffBlock_obj) && canport = true && canport2 = true{
			with OnAndOffBlock_obj step +=1
	}
	
		if canport = true && canport2 = true{
			audio_play_sound(move,10,false)
			
		if  !instance_exists(Shake) && !instance_exists(Shake2) && !instance_exists(Shake3){
			instance_create_layer(x,y,layer,Shake)
			}
		instance_create_layer(x,y+20,layer,Partical_OBJdown)
		instance_create_layer(x,y+20,layer,Partical_OBJdown)
		instance_create_layer(x,y+20,layer,Partical_OBJdown)
		instance_create_layer(x,y+20,layer,Partical_OBJdown)
		instance_create_layer(x,y+20,layer,Partical_OBJdown)
		instance_create_layer(x,y+20,layer,Partical_OBJdown)
		instance_create_layer(x,y+20,layer,Partical_OBJdown)
		instance_create_layer(x,y+20,layer,Partical_OBJdown)
		instance_create_layer(x,y+20,layer,Partical_OBJdown)
		instance_create_layer(x,y+20,layer,Partical_OBJdown)
		

	

	
		}
	    canport = false
		canport2 = false
		vsp = 0
	}
	if place_meeting(x+hsp,y,groundObjects){
	while(!place_meeting(x+sign(hsp),y,groundObjects)){
		x += sign(hsp)
	}
	hsp = 0
	}
	if isGronded{ // when on the grond
canjump = 10;
canswitch = true
if sprite_index != Blobybob_frunt_spr{
sprite_index = Blobybob_spr
}
	
} else {
	sprite_index = PlayerMoveUP;
	
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

isGronded = place_meeting(x,y-4,groundObjects)
jumpkey = keyboard_check_pressed(ord("Q"));
if place_meeting(x,y-vsp,groundObjects){
		while !place_meeting(x,y-sign(vsp),groundObjects){
			y -= sign(vsp)
		}
		if instance_exists(bossfirtEn) && canport = true && canport2 = true{
		
			with bossfirtEn step +=1
			
	    }
		if instance_exists(Sheald_obj) && canport = true && canport2 = true{
			with Sheald_obj step +=1
		}
		if instance_exists(Gohst_obj) && canport = true && canport2 = true{
		with Gohst_obj step +=1
		
		}
		if instance_exists(OnAndOffBlock_obj) && canport = true && canport2 = true{
			with OnAndOffBlock_obj step +=1
	}
	if canport = true && canport2 = true{
		
		
		if !instance_exists(Shake) && !instance_exists(Shake2) && !instance_exists(Shake3){
			instance_create_layer(x,y,layer,Shake)
			}
		instance_create_layer(x,y-20,layer,Partical_OBJup)
		instance_create_layer(x,y-20,layer,Partical_OBJup)
		instance_create_layer(x,y-20,layer,Partical_OBJup)
		instance_create_layer(x,y-20,layer,Partical_OBJup)
		instance_create_layer(x,y-20,layer,Partical_OBJup)
		instance_create_layer(x,y-20,layer,Partical_OBJup)
		instance_create_layer(x,y-20,layer,Partical_OBJup)
		instance_create_layer(x,y-20,layer,Partical_OBJup)
		instance_create_layer(x,y-20,layer,Partical_OBJup)
		
	
	}
		if canport = true && canport2 = true{
			audio_play_sound(move,10,false)
		}
	    canport = false
		canport2 = false
		vsp = 0
	}
	if place_meeting(x+hsp,y,groundObjects){
	while(!place_meeting(x+sign(hsp),y,groundObjects)){
		x += sign(hsp)
	}
	hsp = 0
	}
if isGronded{ // when on the grond
canjump = 10;
canswitch = true
if sprite_index != Blobybob_frunt_spr{
sprite_index = Blobybob_spr;
}
	
} else {
	sprite_index = PlayerMoveUP;
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
	isGronded = place_meeting(x-4,y,groundObjects)

jumpkey = keyboard_check_pressed(ord("Q"));
if place_meeting(x+hsp,y,groundObjects){
		while !place_meeting(x +sign(hsp),y,groundObjects){
			x += sign(hsp)
		}
		if instance_exists(bossfirtEn) && canport = true && canport2 = true{
		
		with bossfirtEn step +=1
	
	}
	if instance_exists(Sheald_obj) && canport = true && canport2 = true{
			with Sheald_obj step +=1
		}
	if instance_exists(Gohst_obj) && canport = true && canport2 = true{
		with Gohst_obj step +=1
	}
	if instance_exists(OnAndOffBlock_obj) && canport = true && canport2 = true{
			with OnAndOffBlock_obj step +=1
	}
		if canport = true && canport2 = true{
			audio_play_sound(move,10,false)
			if !instance_exists(Shake) && !instance_exists(Shake2) && !instance_exists(Shake3){
			instance_create_layer(x,y,layer,Shake)
			}
			instance_create_layer(x-20,y,layer,Partical_OBJLeft)
			instance_create_layer(x-20,y,layer,Partical_OBJLeft)
			instance_create_layer(x-20,y,layer,Partical_OBJLeft)
			instance_create_layer(x-20,y,layer,Partical_OBJLeft)
			instance_create_layer(x-20,y,layer,Partical_OBJLeft)
			instance_create_layer(x-20,y,layer,Partical_OBJLeft)
			instance_create_layer(x-20,y,layer,Partical_OBJLeft)
			instance_create_layer(x-20,y,layer,Partical_OBJLeft)
			instance_create_layer(x-20,y,layer,Partical_OBJLeft)
			instance_create_layer(x-20,y,layer,Partical_OBJLeft)
		
		}
	    canport = false
		canport2 = false
		hsp = 0
	}
	if place_meeting(x,y+vsp,groundObjects){
	while(!place_meeting(x,y+sign(vsp),groundObjects)){
		y += sign(vsp)
	}
	vsp = 0
	}
	

	if isGronded{ // when on the grond
canjump = 10;
canswitch = true
if sprite_index != Blobybob_frunt_spr{
sprite_index = Blobybob_spr;
}
	
} else {
	sprite_index = PlayerMoveSide;
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

	isGronded = place_meeting(x+4,y,groundObjects)
jumpkey = keyboard_check_pressed(ord("q"));
if place_meeting(x-hsp,y,groundObjects){
		while !place_meeting(x -sign(hsp),y,groundObjects){
			x -= sign(hsp)
		}
	if instance_exists(bossfirtEn) && canport = true && canport2 = true{
		
		with bossfirtEn step +=1
		
	}
	if instance_exists(Sheald_obj) && canport = true && canport2 = true{
			with Sheald_obj step +=1
		}
	if instance_exists(Gohst_obj) && canport = true && canport2 = true{
		with Gohst_obj step +=1
	}
	if instance_exists(OnAndOffBlock_obj) && canport = true && canport2 = true{
			with OnAndOffBlock_obj step +=1
	}
		if canport = true && canport2 = true{
			audio_play_sound(move,10,false)
			if !instance_exists(Shake) && !instance_exists(Shake2) && !instance_exists(Shake3){
			instance_create_layer(x,y,layer,Shake)
			}
			instance_create_layer(x+20,y,layer,Partical_OBJRight)
			instance_create_layer(x+20,y,layer,Partical_OBJRight)
			instance_create_layer(x+20,y,layer,Partical_OBJRight)
			instance_create_layer(x+20,y,layer,Partical_OBJRight)
			instance_create_layer(x+20,y,layer,Partical_OBJRight)
			instance_create_layer(x+20,y,layer,Partical_OBJRight)
			instance_create_layer(x+20,y,layer,Partical_OBJRight)
			instance_create_layer(x+20,y,layer,Partical_OBJRight)
			instance_create_layer(x+20,y,layer,Partical_OBJRight)
		
		}
	    canport = false
		canport2 = false
		hsp = 0
	}
	if place_meeting(x,y+vsp,groundObjects){
	while(!place_meeting(x,y+sign(vsp),groundObjects)){
		y += sign(vsp)
	}
	vsp = 0
	}
	

if isGronded{ // when on the grond
canjump = 10;
canswitch = true
if sprite_index != Blobybob_frunt_spr{
sprite_index = Blobybob_spr;
}
} else {
	sprite_index = PlayerMoveSide;
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
if canMove = true{
if Key_Right && canswitch = true{
	oneWay = onewayRT
	sid = 4
	canport2 = true
	/*if instance_exists(bossfirtEn){
		with bossfirtEn step +=1
	}*/
}
if Key_Up && canswitch = true{
	oneWay = onewayUP
	
	sid = 2

	canport2 = true
	/*if instance_exists(bossfirtEn){
		with bossfirtEn step +=1
	}*/

}
if Key_Down && canswitch = true{
	oneWay = onewayDOWN
	sid = 1
	
	canport2 = true
	/*if instance_exists(bossfirtEn){
		with bossfirtEn step +=1
	}*/
}
if Key_Left && canswitch = true{
	oneWay = onewayLT
	sid = 3

	canport2 = true
	/*if instance_exists(bossfirtEn){
		with bossfirtEn step +=1
	}*/

}

groundObjects = [ground_ob, movingGround, lazzer_ob, oneWay, OnOff, Spike_obj]
}
/*if redy = false{
	
	while place_meeting(x,y,Blobybob_obj){
	redy = true
}*/
	
}

/*
if instance_exists(CoppyCat_obj) && canport = false {		
		with CoppyCat_obj {
				canswitch = false;
				
				}
	}*/ //this code will stop coppy cat enemys from being controld when you canot move


if sid = 1{
	side = sidedown
}
if sid = 2{
	side = sideup
}
if sid = 3{
	side = sidelt
}
if sid = 4{
	side = sidert
}
side()

if instance_exists(o_transition) or instance_exists(o_transition_Deth)
{
	canMove = false
}
}




if On = true && !place_meeting(x,y,OnAndOffBlock_obj){
	OnOff = OnAndOffBlock_obj;
}else{
	OnOff = ground_ob
}