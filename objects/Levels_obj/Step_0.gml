if Bpause == false{
	if x != posX + Offset{
		
		x += Mospeed
	}
	if image_alpha >= 0{
		image_alpha -= 0.1
	}

}
if Bpause == true{
	if x != posX{
		x -= Mospeed
	}
	if image_alpha <= 1{
		
		image_alpha += 0.1
	}
}


if IsSelecded = true{
	image_index = 0	
}
if IsSelecded = false{
	image_index = 1
}


// geting controler and keybord imput

var _maxpads = gamepad_get_device_count();
for (var i = 0; i < _maxpads; i++)
{
    if (gamepad_is_connected(i))
    {
		if gamepad_button_check_pressed(i,gp_face2){
			if IsSelecded && Bpause = true{
				room_goto(LevelSelect)
				Pause.pause = false
			}
		}
	}
	
}

if keyboard_check_pressed(vk_space){
	if IsSelecded && Bpause = true{
				room_goto(LevelSelect)
				Pause.pause = false
			}
}