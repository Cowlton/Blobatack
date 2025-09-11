IsSelecded = false

Name = "Save One"

Levle_offset = 200
Spaceing_offset = 40


if file_exists("save_file_1") {
	var _file = file_text_open_read("save_file_1");
	var _json = file_text_read_string(_file)
		
		var _struct = json_parse(_json)
		
		Room = _struct.level
		Deths = _struct.deth
		
		//TimePlayed = _struct.PlayTime
		//global.elapsed_time = TimePlayed
		
		file_text_close(_file)
		
		//TimePlayed_Text = ("Time Played: " + string(TimePlayed))
		Level_Text = ("Levle: " + string(Room))
		Deth_Text = ("Deaths: " + string(Deths))
}else{
	Room = 1
	Deths = 0
	//TimePlayed = 0;
	//global.elapsed_time = TimePlayed
	
//	TimePlayed_Text = ("Time Played: " + string(TimePlayed))
	Level_Text = ("Level: " + string(Room))
	Deth_Text = ("Deaths: " + string(Deths))
}


MyGuy = self;
