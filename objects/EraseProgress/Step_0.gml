if IsSelecded = true{
	image_index = 1
	
var _maxpads = gamepad_get_device_count();
for (var i = 0; i < _maxpads; i++)
{
    if (gamepad_is_connected(i))
    {
		if gamepad_button_check_pressed(i,gp_face2){
			if IsSelecded && cooldown <= 1{
				cooldown = 2
				if Pause.pause = false{
				
				delet_check.isVisable = true
				}
			}
		}
	}
	
}
}else{
	image_index = 0
}

if delet_check.isVisable = true{
	cooldown = 2
}else{
	if cooldown >= 0{
		cooldown -= 0.5
	}
	
}
