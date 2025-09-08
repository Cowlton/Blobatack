
atackkey = keyboard_check_pressed(vk_space)

if Slider_pos != Target_pos{
	
	instance_create_layer(Slider_pos,y,layer,Trail_obj);
	
	
	if Slider_pos >= Target_pos{
	
			
		
		Slider_pos -= Sli_speed
		if Slider_pos - Target_pos >= 5{
			
			Sli_speed = speed_min * (( Slider_pos - Target_pos) * 0.1)
			
			}else{
			if dragging = false{
				slider_spr = Blobybob_spr
				
			}
				Slider_pos = Target_pos 
			}
		
		
	}
	if Slider_pos <= Target_pos{
	
	
		Slider_pos += Sli_speed 
		if Target_pos - Slider_pos >= 5{
			
			Sli_speed = speed_min * (( Target_pos - Slider_pos) * 0.1)
			
			}else{
			if dragging = false{
				slider_spr = Blobybob_spr
				
			}
				Slider_pos = Target_pos 
			}
	
		
	}
	
}else{
	if dragging = false{
	slider_spr = Blobybob_spr
	
	}

	Sli_speed = slider_TopSpeed
}



if neadstoupdate = true{
	The_time -= 1
}
var _langth = image_xscale

var _begining = x - _langth * 38

var _end = x + _langth * 38

if The_time <= 0 {
	
	timeToUpdate = true
	neadstoupdate = false
	
	
	The_time = time
	
}


if timeToUpdate = true {
if IsSelecded = true{
Target_pos = mouse_x
Sli_speed = slider_TopSpeed

slider_spr = PlayerMoveSide


if mouse_x >= Slider_pos{
	
	faceing = 1
}

if mouse_x <= Slider_pos{
	
	faceing = -1
}
}
	
var _langth = image_xscale

var _begining = x - _langth * 38

var _end = x + _langth * 38




// Ensure the start_x is less than end_x for correct calculations
if (_begining > _end) {
    var temp = _begining;
    _begining = _end;
    _end = temp;
}

// Define the x value you want to compare
var x_value = Target_pos;


// Calculate the normalized position of x_value between start_x and end_x
var normalized_position = (x_value - _begining) / (_end - _begining);

// Convert the normalized position to a percentage between 0 and 100
var percentage_position = clamp(normalized_position * 100, 0, 100);

global.Volume_num = round (percentage_position)


show_debug_message("Updating")
timeToUpdate = false
	
}


if dragging = true{
	
	slider_spr = PlayerMoveSide
			
}



var _maxpads = gamepad_get_device_count();
for (var i = 0; i < _maxpads; i++)
{
    if (gamepad_is_connected(i))
    {
		
		cooldown -= 1
		
		atackkey = gamepad_button_check_pressed(i,gp_shoulderrb)
		
		
		if gamepad_axis_value(i,gp_axislh) >= 0.7 && cooldown <= 1{
			if IsSelecded = true{
				
				if Speed <= top_speed{
					Speed += 1
				}
				
			cooldown = 1
			faceing = 1
			if Target_pos <= _end +1{
			
			Target_pos += Speed
			slider_spr = PlayerMoveSide
			if alarm_off = true{
			alarm_set(0,2)
			alarm_off = false
			}
			}
			
		
			}
			
		}else if gamepad_axis_value(i,gp_axislh) <= -0.7 && cooldown <= 1{
			if IsSelecded = true{
				
				if Speed <= top_speed{
					Speed += 1
				}
				
					cooldown = 1
			if Target_pos >= _begining -1{
			Target_pos -= Speed
			faceing =-1
			slider_spr = PlayerMoveSide
			if alarm_off = true{
			alarm_set(0,2)
			alarm_off = false
			}
			}
			
			}
		}else if !gamepad_axis_value(i,gp_axislh) <= -0.7 && !gamepad_axis_value(i,gp_axislh) >= 0.7{
			cooldown = 0
			Speed = Min_speed
		}
	}
	
	
}

if keyboard_check(ord("D")) &&  cooldown <= 1{

		if IsSelecded = true{
				
			if Speed <= top_speed{
				Speed += 1
			}
				
			cooldown = 1
			faceing = 1
			if Target_pos <= _end +1{
			
			Target_pos += Speed
			slider_spr = PlayerMoveSide
			if alarm_off = true{
			alarm_set(0,2)
			alarm_off = false
			}
			}
			
		
	}
	
}
if keyboard_check(ord("A")) &&  cooldown <= 1{
	if IsSelecded = true{
				
				if Speed <= top_speed{
					Speed += 1
				}
				
					cooldown = 1
			if Target_pos >= _begining -1{
			Target_pos -= Speed
			faceing =-1
			slider_spr = PlayerMoveSide
			if alarm_off = true{
			alarm_set(0,2)
			alarm_off = false
			}
			}
			
			}
}


if IsSelecded = true{
Slider_out_obj.image_alpha = 1


if (atackkey){
	if (attacking == false){
	attacking = true;
	sowrd_spr = sord_starter_hit_right_spr;
	audio_play_sound(attack,20,false)
	}
	
}
if (attacking){
	
	if (sowrd_index <= 5){

	sowrd_index+= 0.4
	}else{
	sowrd_index = 0
	sowrd_spr = sord_start_right
	attacking = false
	}
}



}else{
	Slider_out_obj.image_alpha = 0
}
