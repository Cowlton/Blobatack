atackfaceingrightkey = keyboard_check(ord("L")) || keyboard_check(vk_right)
atackfaceingleftkey = keyboard_check(ord("J")) || keyboard_check(vk_left)


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

var _maxpads = gamepad_get_device_count();

for (var i = 0; i < _maxpads; i++)
{
    if (gamepad_is_connected(i))
    {
		Key_Right = gamepad_axis_value(i, gp_axislh) >= sensi || gamepad_button_check(i,gp_padr)
		Key_Left = gamepad_axis_value(i, gp_axislh) <= - sensi|| gamepad_button_check(i,gp_padl)
		Key_Up = gamepad_axis_value(i, gp_axislv) <= -sensi || gamepad_button_check(i,gp_padu)
		Key_Down = gamepad_axis_value(i, gp_axislv) >= sensi || gamepad_button_check(i,gp_padd)
		atackfaceingrightkey = gamepad_axis_value(i, gp_axisrh) >= sensi
		atackfaceingleftkey = gamepad_axis_value(i, gp_axisrh) <= -sensi
		
        // do stuff with pad "i"
    }
}

if atackfaceingrightkey{
	faceing = 1
	
}

if atackfaceingleftkey{
	faceing = -1
	
}


if redy = true{


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
		if instance_exists(Sheald_obj) && canport = true && canport2 = true{
			with Sheald_obj step +=1
		}
		if instance_exists(goste) && canport = true && canport2 = true{
		with goste step +=1
		
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
	if place_meeting(x+hsp,y,[ground_ob, movingGround, lazzer_ob, onewayDOWN]){
	while(!place_meeting(x+sign(hsp),y,[ground_ob, movingGround, lazzer_ob, onewayDOWN])){
		x += sign(hsp)
	}
	hsp = 0
	}
	if isGronded{ // when on the grond
canjump = 10;
canswitch = true

sprite_index = SP
	
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

isGronded = place_meeting(x,y-4,[ground_ob, movingGround, lazzer_ob, onewayUP])
jumpkey = keyboard_check_pressed(ord("Q"));
if place_meeting(x,y-vsp,[ground_ob, movingGround, lazzer_ob, onewayUP]){
		while !place_meeting(x,y-sign(vsp),[ground_ob, movingGround, lazzer_ob, onewayUP]){
			y -= sign(vsp)
		}
		if instance_exists(bossfirtEn) && canport = true && canport2 = true{
		
			with bossfirtEn step +=1
			
	    }
		if instance_exists(Sheald_obj) && canport = true && canport2 = true{
			with Sheald_obj step +=1
		}
		if instance_exists(goste) && canport = true && canport2 = true{
		with goste step +=1
		
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
	if place_meeting(x+hsp,y,[ground_ob, movingGround, lazzer_ob, onewayUP]){
	while(!place_meeting(x+sign(hsp),y,[ground_ob, movingGround, lazzer_ob, onewayUP])){
		x += sign(hsp)
	}
	hsp = 0
	}
if isGronded{ // when on the grond
canjump = 10;
canswitch = true
sprite_index = SP;
	
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
	isGronded = place_meeting(x-4,y,[ground_ob, movingGround, lazzer_ob, onewayLT])

jumpkey = keyboard_check_pressed(ord("Q"));
if place_meeting(x+hsp,y,[ground_ob, movingGround, lazzer_ob, onewayLT]){
		while !place_meeting(x +sign(hsp),y,[ground_ob, movingGround, lazzer_ob, onewayLT]){
			x += sign(hsp)
		}
		if instance_exists(bossfirtEn) && canport = true && canport2 = true{
		
		with bossfirtEn step +=1
	
	}
	if instance_exists(Sheald_obj) && canport = true && canport2 = true{
			with Sheald_obj step +=1
		}
	if instance_exists(goste) && canport = true && canport2 = true{
		with goste step +=1
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
	if place_meeting(x,y+vsp,[ground_ob, movingGround, lazzer_ob, onewayLT]){
	while(!place_meeting(x,y+sign(vsp),[ground_ob, movingGround, lazzer_ob, onewayLT])){
		y += sign(vsp)
	}
	vsp = 0
	}
	

	if isGronded{ // when on the grond
canjump = 10;
canswitch = true

sprite_index = SP;
	
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

	isGronded = place_meeting(x+4,y,[ground_ob, movingGround, onewayRT, lazzer_ob])
jumpkey = keyboard_check_pressed(ord("q"));
if place_meeting(x-hsp,y,[ground_ob, movingGround, onewayRT, lazzer_ob]){
		while !place_meeting(x -sign(hsp),y,[ground_ob, movingGround, onewayRT, lazzer_ob]){
			x -= sign(hsp)
		}
	if instance_exists(bossfirtEn) && canport = true && canport2 = true{
		
		with bossfirtEn step +=1
		
	}
	if instance_exists(Sheald_obj) && canport = true && canport2 = true{
			with Sheald_obj step +=1
		}
	if instance_exists(goste) && canport = true && canport2 = true{
		with goste step +=1
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
	if place_meeting(x,y+vsp,[ground_ob, movingGround, onewayRT, lazzer_ob]){
	while(!place_meeting(x,y+sign(vsp),[ground_ob, movingGround, onewayRT, lazzer_ob])){
		y += sign(vsp)
	}
	vsp = 0
	}
	

if isGronded{ // when on the grond
canjump = 10;
canswitch = true
sprite_index = SP;
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
	sid = 4

	canport2 = true
	
	/*if instance_exists(bossfirtEn){
		with bossfirtEn step +=1
	}*/
}
if Key_Up && canswitch = true{
	sid = 2

	canport2 = true
	/*if instance_exists(bossfirtEn){
		with bossfirtEn step +=1
	}*/

}
if Key_Down && canswitch = true{
	sid = 1
	
	canport2 = true
	/*if instance_exists(bossfirtEn){
		with bossfirtEn step +=1
	}*/
}
if Key_Left && canswitch = true{
	sid = 3

	canport2 = true
	/*if instance_exists(bossfirtEn){
		with bossfirtEn step +=1
	}*/

}
}
/*if redy = false{
	
	while place_meeting(x,y,Blobybob_obj){
	redy = true
}*/
	
}


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