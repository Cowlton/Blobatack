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
	SideDown();
}
if sid = 2{
  SideUp();
	
}
if sid = 3{
	SideLeft()
	
}
if sid = 4{
	SideRight();

}


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