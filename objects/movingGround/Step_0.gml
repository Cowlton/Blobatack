if redy = true{

if instance_exists(Player_obj){

Key_Right = keyboard_check_pressed(ord("D")) && canswitch = true
Key_Left =  keyboard_check_pressed(ord("A")) && canswitch = true
Key_Up = keyboard_check_pressed(ord("W")) && canswitch = true
Key_Down = keyboard_check_pressed(ord("S")) && canswitch = true


sidedown = function(){
image_angle = 0
//jumping acton
isGronded = place_meeting(x,y+4,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, lazzer_ob, onewayDOWN])
jumpkey = keyboard_check_pressed(ord("q"));

if place_meeting(x,y+vsp,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, lazzer_ob, onewayDOWN]){
		while !place_meeting(x,y+sign(vsp),[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, lazzer_ob, onewayDOWN]){
			y += sign(vsp)
		}
		vsp = 0
	}
	if place_meeting(x+hsp,y,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, lazzer_ob, onewayDOWN]){
	while(!place_meeting(x+sign(hsp),y,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, lazzer_ob, onewayDOWN])){
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

isGronded = place_meeting(x,y-4,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, lazzer_ob, onewayUP])
jumpkey = keyboard_check_pressed(ord("q"));
if place_meeting(x,y-vsp,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, lazzer_ob, onewayUP]){
		while !place_meeting(x,y-sign(vsp),[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, lazzer_ob, onewayUP]){
			y -= sign(vsp)
		}
		vsp = 0
	}
	if place_meeting(x+hsp,y,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, lazzer_ob, onewayUP]){
	while(!place_meeting(x+sign(hsp),y,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, lazzer_ob, onewayUP])){
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

isGronded = place_meeting(x-4,y,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, lazzer_ob, onewayLT])

jumpkey = keyboard_check_pressed(ord("q"));
if place_meeting(x+hsp,y,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, lazzer_ob, onewayLT]){
		while !place_meeting(x +sign(hsp),y,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, lazzer_ob, onewayLT]){
			x += sign(hsp)
		}
		
		hsp = 0
	}
	if place_meeting(x,y+vsp,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, lazzer_ob, onewayLT]){
	while(!place_meeting(x,y+sign(vsp),[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, lazzer_ob, onewayLT])){
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

	isGronded = place_meeting(x+4,y,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, onewayRT, lazzer_ob])
jumpkey = keyboard_check_pressed(ord("q"));
if place_meeting(x-hsp,y,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, onewayRT, lazzer_ob]){
		while !place_meeting(x -sign(hsp),y,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, onewayRT, lazzer_ob]){
			x -= sign(hsp)
		}
		
		hsp = 0
	}
	if place_meeting(x,y+vsp,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, onewayRT, lazzer_ob]){
	while(!place_meeting(x,y+sign(vsp),[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, onewayRT, lazzer_ob])){
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

if My_con !=0{
if (gamepad_is_connected(My_con))
{
		Key_Right = gamepad_axis_value(My_con, gp_axislh) >= sensi || gamepad_button_check(My_con,gp_padr)
		Key_Left = gamepad_axis_value(My_con, gp_axislh) <= - sensi|| gamepad_button_check(My_con,gp_padl)
		Key_Up = gamepad_axis_value(My_con, gp_axislv) <= -sensi || gamepad_button_check(My_con,gp_padu)
		Key_Down = gamepad_axis_value(My_con, gp_axislv) >= sensi || gamepad_button_check(My_con,gp_padd)
		
		
        // do stuff with pad "i"
}
}
if Key_Right{
	sid = 4

}
if Key_Down{
	sid = 1

}
if Key_Up{
	sid = 2

}
if Key_Left{
	sid = 3

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