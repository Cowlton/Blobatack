if IsSelecded = true{
	image_index = 1
	MyGuy.image_alpha = 1;
var _maxpads = gamepad_get_device_count();
for (var i = 0; i < _maxpads; i++)
{
    if (gamepad_is_connected(i))
    {
		if gamepad_button_check_pressed(i,gp_face2){
			if IsSelecded{
			global.Room = 1
			global.DethAm = 0
			global.Load_data = 1
			load_game()
			Select.UIint = 2;
			IsSelecded = false;

			}
		}
	}
	
}
}else{
	image_index = 0
	MyGuy.image_alpha = 1;
}

// Checks keybord imput

if keyboard_check_pressed(vk_space){
		if IsSelecded{
	
			global.Room = 1
			global.DethAm = 0
			global.Load_data = 1
			load_game()
			Select.UIint = 2;
			IsSelecded = false;

		}
}

if keyboard_check_pressed(ord("D")){
	if IsSelecded{
		global.Room = 1
		global.DethAm = 0
		global.Load_data = 1
		load_game()
		Select.UIint = 2;
		IsSelecded = false;
		
	}
		

}


if file_exists("save_file_1") {
	var _file = file_text_open_read("save_file_1");
	var _json = file_text_read_string(_file)
		
		var _struct = json_parse(_json)
		
		Room = _struct.level
		Deths = _struct.deth
		//TimePlayed = _struct.PlayTime
		//global.elapsed_time = TimePlayed
		file_text_close(_file)
		
		/*var hours = floor(TimePlayed / 3600);
		var minutes = floor((TimePlayed % 3600) / 60);
		var seconds = TimePlayed % 60;
		
		TimePlayed_Text = ("Time Played: " + string(hours) + "h " + string(minutes) + " m" + string_format(seconds, 2, 2) + "s")
		*/
	
}else{
	Room = 1
	Deths = 0
	/*TimePlayed = 0;
	//global.elapsed_time = TimePlayed
		var hours = floor(TimePlayed / 3600);
		var minutes = floor((TimePlayed % 3600) / 60);
		var seconds = TimePlayed % 60;
	
	TimePlayed_Text = ("Time Played: " + string(hours) + "h " + string(minutes) + " m" + string_format(seconds, 2, 2) + "s")
	*/
}

Level_Text = ("Level: " + string(Room))
Deth_Text = ("Deaths: " + string(Deths))
	