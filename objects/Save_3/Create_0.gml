
IsSelecded = false

Name = "Save Three"

Levle_offset = 200
Spaceing_offset = 40


if file_exists("save_file_3") {
	var _file = file_text_open_read("save_file_3");
	var _json = file_text_read_string(_file)
		
		var _struct = json_parse(_json)
		
		Room = _struct.level
		Deths = _struct.deth
		
		file_text_close(_file)
		
		Level_Text = ("Levle: " + string(Room))
		Deth_Text = ("Deaths: " + string(Deths))
}else{
	Room = 1
	Deths = 0
	Level_Text = ("Levle: " + string(Room))
	Deth_Text = ("Deaths: " + string(Deths))
}

