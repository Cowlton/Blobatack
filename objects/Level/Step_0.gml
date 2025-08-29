MAX = global.Room
if Paused = false{
var _maxpads = gamepad_get_device_count();
for (var i = 0; i < _maxpads; i++)
{
    if (gamepad_is_connected(i))
    {
		cooldown -= 1
		if gamepad_button_check_pressed(i,gp_face2) {
			audio_stop_sound(Menue)
			
			room_goto(Text + 1);
		}
		if gamepad_axis_value(i,gp_axislh) >= 0.7 && cooldown <= 1{
			cooldown = 10
			if Text <= MAX -1{
			Text += 1
			}
		}else if gamepad_axis_value(i,gp_axislh) <= -0.7 && cooldown <= 1{
			cooldown = 10
			if Text >= MIN +1{
			Text -= 1
			}
		}else if !gamepad_axis_value(i,gp_axislh) <= -0.7 && !gamepad_axis_value(i,gp_axislh) >= 0.7{
			cooldown = 0
			
		}
		
	}
	
	
}

if keyboard_check(ord("D")) && cooldown <= 1 || keyboard_key_press(vk_right) && cooldown <= 1{
		cooldown = 10
		
		show_debug_message("DDDD")
			if Text <= MAX -1{
			Text += 1
			}
}
if keyboard_check(ord("A")) && cooldown <= 1 || keyboard_key_press(vk_left) && cooldown <= 1 {
	    cooldown = 10
			if Text >= MIN +1{
			Text -= 1
			}
}

if  keyboard_check_pressed(vk_space) {
			audio_stop_sound(Menue)
			
			room_goto(Text + 1);
}


}


