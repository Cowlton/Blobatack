
// Geting the Controler and takeing imput


 if (gamepad_is_connected(global.GamePad))
 {
		
	if pause = true{
		cooldown -= 1
		
		if gamepad_axis_value(global.GamePad,gp_axislv) >= 0.7  && cooldown <= 1{
			chosen.IsSelecded = false
			Pres += 1
			cooldown = 20
		}else if gamepad_axis_value(global.GamePad,gp_axislv) <= -0.7  && cooldown <= 1{
			chosen.IsSelecded = false
			Pres -= 1
			cooldown = 20
		
		}else if !gamepad_axis_value(global.GamePad,gp_axislv) >= 0.7 && !gamepad_axis_value(global.GamePad,gp_axislv) <= -0.7  {
			cooldown = 0
		}
		
	}


// pausing stuff

if gamepad_button_check_pressed(global.GamePad,gp_face1) && !instance_exists(StopFromPausing){

if pause = true && canSwitch = true{
				pause = false
				canSwitch = false
		
		
				if instance_exists(wepon_starter_obj){
					wepon_starter_obj.redy = true
				}
				if instance_exists(Player_obj){
				Player_obj.canMove = true;
				Player_obj.redy = true;
				Player_obj.vsp = 0
				Player_obj.hsp = 0
				}
				if instance_exists(CoppyCat_obj){
				CoppyCat_obj.redy = true;
				CoppyCat_obj.canMove = true;
				CoppyCat_obj.vsp = 0
				CoppyCat_obj.hsp = 0
		
				}
			}
			
	}
	


		if gamepad_button_check_pressed(global.GamePad,gp_start) && !instance_exists(StopFromPausing) {
	
	
			if pause = true && canSwitch = true{
				pause = false
				canSwitch = false
		
		
				if instance_exists(wepon_starter_obj){
					wepon_starter_obj.redy = true
				}
				if instance_exists(Player_obj){
				Player_obj.canMove = true;
				Player_obj.redy = true;
				Player_obj.vsp = 0
				Player_obj.hsp = 0
				}
				if instance_exists(CoppyCat_obj){
				CoppyCat_obj.redy = true;
				CoppyCat_obj.canMove = true;
				CoppyCat_obj.vsp = 0
				CoppyCat_obj.hsp = 0
		
				}
			}
			
			if pause = false  && canSwitch = true{
				pause = true
				
				
				if instance_exists(wepon_starter_obj){
					wepon_starter_obj.redy = false
				}
				if instance_exists(CoppyCat_obj){
				CoppyCat_obj.canMove = false;
				CoppyCat_obj.redy = false;
				CoppyCat_obj.vsp = 0
				CoppyCat_obj.hsp = 0
				}
		
				if instance_exists(Player_obj){
				Player_obj.redy = false;
				Player_obj.canMove = false;
				Player_obj.vsp = 0
				Player_obj.hsp = 0
				canSwitch = false
				}
			}
		}
		
		if gamepad_button_check_released(global.GamePad,gp_start) || gamepad_button_check_pressed(global.GamePad,gp_face1) {
			canSwitch = true
		}
}

if (keyboard_check_pressed(ord("P"))) && !instance_exists(StopFromPausing){
	
	
	if pause = true && canSwitch = true{
		pause = false
		canSwitch = false
		
		if instance_exists(Player_obj){
		Player_obj.canMove = true;
		Player_obj.redy = true;
		Player_obj.grv = 2
		}
		if instance_exists(CoppyCat_obj){
		CoppyCat_obj.redy = true;
		CoppyCat_obj.canMove = true;
		
		}
	}
	if pause = false  && canSwitch = true{
		pause = true
		if instance_exists(CoppyCat_obj){
		CoppyCat_obj.canMove = false;
		CoppyCat_obj.redy = false;
		CoppyCat_obj.grv = 2
		}
		
		if instance_exists(Player_obj){
		Player_obj.redy = false;
		Player_obj.canMove = false;
		Player_obj.grv = 2
		canSwitch = false
		}
	}
}
if keyboard_check_released(ord("P")) {
	canSwitch = true
}

if pause = true{
		if instance_exists(wepon_starter_obj){
			wepon_starter_obj.redy = false
		}
		if instance_exists(CoppyCat_obj){
			CoppyCat_obj.canMove = false;
			CoppyCat_obj.redy = false;
			CoppyCat_obj.vsp = 0
			CoppyCat_obj.hsp = 0
		}
		
		if instance_exists(Player_obj){
			Player_obj.redy = false;
			Player_obj.canMove = false;
			Player_obj.vsp = 0
			Player_obj.hsp = 0
			
		}
	
	
	back.Bpause = true
	home.Bpause = true
	settings.Bpause = true
	levels.Bpause = true
	DethCount.Bpause = true
	RIP_obj.Bpause = true
	if instance_exists(Level){
	Level.Paused = true
	}
	
}



if pause = false{
	if instance_exists(wepon_starter_obj){
	wepon_starter_obj.redy = true
	}
	home.Bpause = false
	back.Bpause = false
	settings.Bpause = false
	levels.Bpause = false
	DethCount.Bpause = false
	RIP_obj.Bpause = false
	if instance_exists(Level){
	Level.Paused = false
	}
}





// Controlling UI


// geting keyboard imput 
if keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down){
	chosen.IsSelecded = false
	Pres += 1
	cooldown = 20
}
if keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up){
	chosen.IsSelecded = false
	Pres -= 1
	cooldown = 20
}




if(keyboard_check(ord("Q"))){
room_goto(Worlds)	
}


// moving the salected indicator 

if pause = true{
	if Pres >= array_length_1d(UIelements){
	 Pres = 0
	}
	if Pres <= -1{
	 Pres = array_length_1d(UIelements)-1
	}
	chosen = UIelements[Pres]
	chosen.IsSelecded = true
	
}




if keyboard_check_pressed(ord("I")){
	room_goto_next()
}
if keyboard_check_pressed(ord("U")){
	room_goto_previous()
}



