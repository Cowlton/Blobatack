

// pausing

	
var _maxpads = gamepad_get_device_count();
for (var i = 0; i < _maxpads; i++)
{
    if (gamepad_is_connected(i))
    {
		if Pause.pause = false {
		cooldown -= 1
			
		if gamepad_axis_value(i,gp_axislv) >= 0.7  && cooldown <= 1{
			chosen.IsSelecded = false
			Pres += 1
			cooldown = 20
		}else if gamepad_axis_value(i,gp_axislv) <= -0.7  && cooldown <= 1{
			chosen.IsSelecded = false
			Pres -= 1
			cooldown = 20
		
		}else if !gamepad_axis_value(i,gp_axislv) >= 0.7 && !gamepad_axis_value(i,gp_axislv) <= -0.7  {
			cooldown = 0
		}
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
	
}
	




