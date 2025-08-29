var _maxpads = gamepad_get_device_count();
for (var i = 0; i < _maxpads; i++)
{
    if (gamepad_is_connected(i))
    {
		
		if isVisable = true{
		cooldown -= 1
		if gamepad_button_check_pressed(i,gp_face2) {
			if salected = 2{
			DeleteData()
			isVisable = false
			}
			if salected = 1{
			isVisable = false
			}
			
		}
		if gamepad_axis_value(i,gp_axislh) <= -0.7 && cooldown <= 1{
			cooldown = 20
			if salected <= 1{
			salected += 1
			}
		}else if gamepad_axis_value(i,gp_axislh) >= 0.7 && cooldown <= 1{
			cooldown = 20
			if salected >= 2{
			salected -= 1
			}
		}else if !gamepad_axis_value(i,gp_axislh) <= -0.7 && !gamepad_axis_value(i,gp_axislh) >= 0.7{
			cooldown = 0
			
		}
		}
		
	}
	
	
}

if isVisable = false{
	salected = 1
	if image_alpha >= 0{
	image_alpha -= 0.2
	}
	
}
if isVisable = true{
	
	if image_alpha <= 1{
	image_alpha += 0.2
	}
}