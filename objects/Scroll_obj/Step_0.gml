
wait -= 1;
if (keyboard_check_pressed(vk_anykey) || gamepad_button_check_pressed(global.GamePad,gp_face1)) && wait <= 1{
	
	if Started == false{
	Started = true;
	instance_destroy(PressStart)
	audio_play_sound(Scroll_sound,10,false,0.38)
	}
}

if Started = true{
	
	if HasBeenRoled == false{
	if ScaleX <= FinalScale{
	ScaleX += 1
	ScaleY += 1
	}
	if Index <= 11{
	Index += 0.5
	
	}else if HasBeenRoled == false{
		HasBeenRoled = true;
		room_goto_next()	
		
	}
	}
	if HasBeenRoled == true{
	
	if Delay >= 0{
	
	Delay -= 1
	
	}else if Delay <= 1{
		
	if ScaleX >= LastScale && HasBeenUnroled == true{
		if ScaleX <= 10{
			moveToFinalPos = true;
		}
		
		if (moveToFinalPos == false)
		{
	ScaleX -= 1
	ScaleY -= 1
		}else if moveToFinalPos == true{
			if WentBack == false{
				ScaleX += 1
				ScaleY += 1
				goBackAm += 1
				if goBackAm >= 3{
					WentBack = true
				}
			}
			if WentBack = true{
					ScaleX -= 1
				ScaleY -= 1
			}
		}
	}
	
	if y >= Ydest && HasBeenUnroled == true && moveToFinalPos == true{ // if the y position is not = to its destenation
		y -= 10 
	}else if  y <= Ydest && has_created == false{
		
		instance_create_layer(x,y,layer,Shake3)
		has_created = true;
	}
	
	if Index >= 1{
		Index -= 0.5
		
	}
	if Index <= 1{
		HasBeenUnroled = true
	}
	}
	}
	
}

image_xscale = ScaleX
image_yscale = ScaleY
image_index = Index


if room <= 1{
	image_alpha = 1
}else{
	image_alpha = 0
}