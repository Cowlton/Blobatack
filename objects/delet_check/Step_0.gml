if isVisable = true{
	
		cooldown -= 1
	
    if (gamepad_is_connected(global.GamePad))
    {
		
		if gamepad_button_check_pressed(global.GamePad,gp_face2) {
			if salected = 2{
			Select.UIint = 1;
			EraseProgress.IsSelecded = false
			DeleteData()
			isVisable = false
			}
			if salected = 1{
			isVisable = false
			}
			
		}
		if gamepad_axis_value(global.GamePad,gp_axislh) <= -0.7 && cooldown <= 1{// left?
			cooldown = 20
			if salected <= 1{
			salected += 1
			}
		}else if gamepad_axis_value(global.GamePad,gp_axislh) >= 0.7 && cooldown <= 1{//Right?
			cooldown = 20
			if salected >= 2{
			salected -= 1
			}
		}else if !gamepad_axis_value(global.GamePad,gp_axislh) <= -0.7 && !gamepad_axis_value(global.GamePad,gp_axislh) >= 0.7{
			cooldown = 0
			
		}
		
		
	}
	
	
	
	if keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_down){
		cooldown = 20
			if salected <= 1{
			salected += 1
			}
	}else if keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_up){
		cooldown = 20
			if salected >= 2{
			salected -= 1
			}
	}

	
}

if keyboard_check_pressed(vk_space){
	cooldown = 20
		if salected = 2{
			Select.UIint = 1;
			EraseProgress.IsSelecded = false
			DeleteData()
			isVisable = false
			}
			if salected = 1{
			isVisable = false
			}
		
}

if isVisable == false{
	salected = 1
	if image_alpha >= 0{
	image_alpha -= 0.2
	}
	
}else if isVisable == true{
	
	if image_alpha <= 1{
	image_alpha += 0.2
	}
}