

// pausing

	
var _maxpads = gamepad_get_device_count();
for (var i = 0; i < _maxpads; i++)
{
    if (gamepad_is_connected(i))
    {
		if Pause.pause = false && delet_check.isVisable = false{
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






// Controlling UI
if Pause.pause = false && delet_check.isVisable = false{

	if Pres >= array_length_1d(UIelements){
	 Pres = 0
	}
	if Pres <= -1{
	 Pres = array_length_1d(UIelements)-1
	}
	chosen = UIelements[Pres]
	chosen.IsSelecded = true
}
	




