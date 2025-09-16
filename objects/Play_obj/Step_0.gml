if IsSelecded = true{
	image_index = 1
	

 if (gamepad_is_connected(global.GamePad))
 {
	if gamepad_button_check_pressed(global.GamePad,gp_face2){
		if IsSelecded && cooldown <= 1{
			cooldown = 2
			if Pause.pause = false{
				audio_stop_all()
			room_goto(global.Room + 1)
			}
		}
	}
}

if keyboard_check_pressed(vk_space){
	
	if IsSelecded && cooldown <= 1{
	cooldown = 2
	
	if Pause.pause = false{		
		audio_stop_all()
		room_goto(global.Room + 1)
	}
	
	}
}
if keyboard_check_pressed(ord("A")){
		Select.UIint = 1;
		IsSelecded = false
		

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
