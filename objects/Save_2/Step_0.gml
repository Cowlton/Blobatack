if IsSelecded = true{
	image_index = 1
	
var _maxpads = gamepad_get_device_count();
for (var i = 0; i < _maxpads; i++)
{
    if (gamepad_is_connected(i))
    {
		if gamepad_button_check_pressed(i,gp_face2){
			if IsSelecded{
			global.Room = 1
			global.DethAm = 0
			global.Load_data = 2
			audio_stop_all()
			load_game()
			global.Switch = true
			room_goto(global.Room + 1)

			}
		}
	}
	
}
}else{
	image_index = 0
}
// Checks keybord imput

if keyboard_check_pressed(vk_space){
	if IsSelecded{
global.Switch = true
global.Load_data = 2
audio_stop_all()
load_game()
room_goto(global.Room)


			}
}

if file_exists("save_file_2") {
	var _file = file_text_open_read("save_file_2");
	var _json = file_text_read_string(_file)
		
		var _struct = json_parse(_json)
		
		Room = _struct.level
		Deths = _struct.deth
		
		file_text_close(_file)
		
		Level_Text = ("Level:" + string(Room))
		Deth_Text = ("Deaths:" + string(Deths))
}else{
	Room = 1
	Deths = 0
	Level_Text = ("Level:" + string(Room))
	Deth_Text = ("Deaths:" + string(Deths))
}


