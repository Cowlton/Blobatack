if redy = true{

if instance_exists(Player_obj){



if x >= Player_obj.x{
	faceing = -1
}
if x <= Player_obj.x{
	faceing = 1
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
	SideDown();
	//side = sidedown
}
if sid = 2{
	
	SideUp()
	
	//side = sideup
}
if sid = 3{
	SideLeft()
	
	//side = sidelt
}
if sid = 4{
	SideRight()
	//side = sidert
}
//side()
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