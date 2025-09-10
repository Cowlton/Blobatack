

// pausing

	

    if (gamepad_is_connected(global.GamePad))
    {
		if Pause.pause = false {
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
		
		
	}



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



// Controlling UI
if Pause.pause = false{


	if Pres >= array_length_1d(UIelements){
	 Pres = 0
	}
	if Pres <= -1{
	 Pres = array_length_1d(UIelements)-1
	}
	chosen = UIelements[Pres]
	chosen.IsSelecded = true
	load = UIelements[Pres].Name;
	Deths = UIelements[Pres].Deth_Text;
	Levels = UIelements[Pres].Level_Text;
	
}
	




