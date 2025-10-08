if redy = true{

if instance_exists(Player_obj){



if x >= Player_obj.x{
	faceing = -1
}
if x <= Player_obj.x{
	faceing = 1
}

sidedown = function(){
image_angle = 0
//jumping acton
isGronded = place_meeting(x,y+4,groundObjects)
jumpkey = keyboard_check_pressed(ord("q"));

if place_meeting(x,y+vsp,groundObjects){
		while !place_meeting(x,y+sign(vsp),groundObjects){
			y += sign(vsp)
		}
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
if canShake == true{
if !instance_exists(Shake) && !instance_exists(Shake2) && !instance_exists(Shake3){
	if instance_exists(Player_obj){
		instance_create_layer(x,y,layer,Shake)
	}
}
}
canShake = false;

sprite_index = coppycat
	
} else {
	canShake = true;
	sprite_index = coppycat_MoveV;
	canjump -= 1;
	canswitch = false
	instance_create_layer(x,y,layer,Trail_obj2);
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
jumpkey = keyboard_check_pressed(ord("q"));
if place_meeting(x,y-vsp,groundObjects){
		while !place_meeting(x,y-sign(vsp),groundObjects){
			y -= sign(vsp)
		}
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
if canShake == true{
if !instance_exists(Shake) && !instance_exists(Shake2) && !instance_exists(Shake3){
		instance_create_layer(x,y,layer,Shake)
}
}
canShake = false;

	sprite_index = coppycat
} else {
	canShake = true;
	sprite_index = coppycat_MoveV
	canjump -= 1;
	canswitch = false
	instance_create_layer(x,y,layer,Trail_obj2);
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

	isGronded = place_meeting(x-4,y,groundObjects)

jumpkey = keyboard_check_pressed(ord("q"));
if place_meeting(x+hsp,y,groundObjects){
		while !place_meeting(x +sign(hsp),y,groundObjects){
			x += sign(hsp)
		}
		
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
if canShake == true{
if !instance_exists(Shake) && !instance_exists(Shake2) && !instance_exists(Shake3){
		instance_create_layer(x,y,layer,Shake)
}
}
canShake = false;

sprite_index = coppycat
	
} else {
	canShake = true;
	sprite_index = coppycat_MoveH
	canjump -= 1;
	canswitch = false
	instance_create_layer(x,y,layer,Trail_obj2);
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
sprite_index = coppycat
if canShake == true{
if !instance_exists(Shake) && !instance_exists(Shake2) && !instance_exists(Shake3){
		instance_create_layer(x,y,layer,Shake)
}
}
canShake = false;
	
} else {
	canShake = true;
	sprite_index = coppycat_MoveH
	canjump -= 1;
	canswitch = false
	instance_create_layer(x,y,layer,Trail_obj2);
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


Key_Right = keyboard_check(ord("D"))
Key_Left = keyboard_check(ord("A")) 
Key_Up = keyboard_check(ord("S")) 
Key_Down = keyboard_check(ord("W")) 

if My_con !=0{
if (gamepad_is_connected(My_con))
{
		Key_Right = gamepad_axis_value(My_con, gp_axislh) >= sensi || gamepad_button_check(My_con,gp_padr)
		Key_Left = gamepad_axis_value(My_con, gp_axislh) <= - sensi|| gamepad_button_check(My_con,gp_padl)
		Key_Up = gamepad_axis_value(My_con, gp_axislv) >= sensi || gamepad_button_check(My_con,gp_padd)
		Key_Down = gamepad_axis_value(My_con, gp_axislv) <= -sensi || gamepad_button_check(My_con,gp_padu)
		
		
        // do stuff with pad "i"
}
}

if canMove = true{
if Key_Right && canswitch = true{
	oneWay = onewayRT
	sid = 4
	

}
if Key_Up && canswitch = true{
	oneWay = onewayUP
	sid = 1
	

}
if Key_Down && canswitch = true{
	oneWay = onewayDOWN
	sid = 2
	

}
if Key_Left && canswitch = true{
	oneWay = onewayLT
	sid = 3
	

}
groundObjects = [ground_ob,CoppyCat_obj,Vampier_obj, movingGround, onewayLT, lazzer_ob, Sheald_obj, ghost,oneWay, OnOff, Spike_obj]
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
}
}


if instance_exists(o_transition) or instance_exists(o_transition_Deth)
{
	canMove = false
}


if On = true && !place_meeting(x,y,OnAndOffBlock_obj){
	OnOff = OnAndOffBlock_obj;
}else{
	OnOff = ground_ob
}

if instance_exists(Gohst_obj){

if Gohst_obj.image_index != 2 && !place_meeting(x,y,Gohst_obj){
	ghost = Gohst_obj;
}else{
	ghost = ground_ob
}

}