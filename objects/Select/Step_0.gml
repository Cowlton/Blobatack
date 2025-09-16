
// pausing

if Pause.pause = false{


// Controlling UI

	if (UIint == 1){
		
		
		if (gamepad_is_connected(global.GamePad))
		{
							
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
		
		
		if Pres >= array_length_1d(UIelements){
		 Pres = 0
		}
		if Pres <= -1{
		 Pres = array_length_1d(UIelements)-1
		}
			
		chosen = UIelements[Pres]
		load = chosen.Name;
		Deths = chosen.Deth_Text;
		Levels = chosen.Level_Text;
		chosen.IsSelecded = true
			
	}
		
	
	
if(UIint == 2){
	
		if (gamepad_is_connected(global.GamePad))
		{
							
			cooldown -= 1
		
			if gamepad_axis_value(global.GamePad,gp_axislv) >= 0.7  && cooldown <= 1{
				
				chosen.IsSelecded = false
				Pres2 += 1
				cooldown = 20
				
			}else if gamepad_axis_value(global.GamePad,gp_axislv) <= -0.7  && cooldown <= 1{
				
				chosen.IsSelecded = false
				Pres2 -= 1
				cooldown = 20
			
			}else if !gamepad_axis_value(global.GamePad,gp_axislv) >= 0.7 && !gamepad_axis_value(global.GamePad,gp_axislv) <= -0.7  {
				
				cooldown = 0
				
			}
			
		}
			
	
		if keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down){
			
			chosen.IsSelecded = false
			Pres2 += 1
			cooldown = 20
		}
		
		if keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up){
			
			chosen.IsSelecded = false
			Pres2 -= 1
			cooldown = 20
		}
		
		
	if Pres2 >= array_length_1d(UIelements2){
	 Pres2 = 0
	}
	if Pres2 <= -1{
	 Pres2 = array_length_1d(UIelements2)-1
	}
	
	chosen = UIelements2[Pres2];
	
	chosen.IsSelecded = true;
	
	}
	

	
	
}

