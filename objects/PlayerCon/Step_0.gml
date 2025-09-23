

if keyboard_key_press(vk_anykey){
	window_mouse_set_locked(false)
	Chose = false
}



var _maxpads = gamepad_get_device_count();

for (var i = 0; i < _maxpads; i++)
{
    if (gamepad_is_connected(i))
    {
		window_mouse_set_locked(true)
		
		if GamePad1 == 0{
			GamePad1 = i
			show_debug_message(i)
			
		}else if GamePad2 == 0 && i >= 5{
			GamePad2 = i
		}
		


	}
	
}
if gamepad_is_connected(GamePad1){
	if gamepad_button_check_pressed(GamePad1,gp_face2){
		show_debug_message("GP1")
		Chose = true
		last = 1
		if GP1 != 0 && GP2 == 0{
			GP2 = GamePad1
		}
		if  GP1 == 0{
			GP1 = GamePad1
		}
		global.GamePad = GP1
	}
	
}

if gamepad_is_connected(GamePad2){
	if gamepad_button_check_pressed(GamePad2,gp_face2){
		show_debug_message("GP2")
		Chose = true
		last = 2
		if GP1 != 0 && GP2 == 0{
			GP2 = GamePad2
		}
		if GP1 == 0{
			GP1 = GamePad2
		}
		global.GamePad = GP1;
	}
	
}

if Chose = true{
	
		window_mouse_set_locked(true)
	
		if instance_exists(Mouse){
			Mouse.Use = false
			
		}
		if instance_exists(Player1){
			Player1.my_pad = GP1
			wepon_starter_obj.my_con = GP1
			
		}
	
	
	
		
		if instance_exists(Player2){
			Player2.my_pad = GP2
			wepon_starter_pl2.my_con = GP2
		}
	
	
	if last = 1{
		if instance_exists(Player_obj){
			Player_obj.My_con = GamePad1
			if instance_exists(CoppyCat_obj) {
				CoppyCat_obj.My_con = GamePad1
			}
			if instance_exists(movingGround) {
				movingGround.My_con = GamePad1
			}
			wepon_starter_obj.my_con = GamePad1
		}
		
		
	}
	if last = 2{
		
		if instance_exists(Player_obj){
			Player_obj.My_con = GamePad2
			if instance_exists(CoppyCat_obj) {
				CoppyCat_obj.My_con = GamePad2
			}
			if instance_exists(movingGround) {
				movingGround.My_con = GamePad2
			}
			wepon_starter_obj.my_con = GamePad2
		}
		
	}

}



