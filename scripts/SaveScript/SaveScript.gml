

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_game(){

var _struct =
	{
			level: global.Room,
			deth: global.DethAm,
			//PlayTime: global.elapsed_time
			
	}
	
	var _string = json_stringify(_struct);
if global.Load_data = 1{
var _file = file_text_open_write("save_file_1");
}
if global.Load_data = 2{
var _file = file_text_open_write("save_file_2");

}
if global.Load_data = 3{
var _file = file_text_open_write("save_file_3");

}
if _file != noone{

file_text_write_string(_file,_string);


file_text_close(_file);
}
/*
show_debug_message("saving")

var _saveArray = array_create(0);

array_push(_saveArray,global.level)
array_push(_saveArray,global.DethAm)



var filename = "SaveData"
var _json = json_stringify(_saveArray)
var _buffer = buffer_create(string_byte_length(_json) + 1, buffer_fixed,1);
buffer_write(_buffer,buffer_string,_json)

buffer_save(_buffer, filename );

buffer_delete(_buffer)
*/
}


function load_game(){
	
	
	if file_exists("save_file_3") && global.Load_data = 3{
			
		
		var _file = file_text_open_read("save_file_3");
			
		var _json = file_text_read_string(_file)
		
		var _struct = json_parse(_json)
		
		//global.elapsed_time = _struct.PlayTime
		global.Room = _struct.level
		global.DethAm = _struct.deth
		
		file_text_close(_file)
		
		}
	
	if file_exists("save_file_1") && global.Load_data = 1{

			
		var _file = file_text_open_read("save_file_1");
			

		var _json = file_text_read_string(_file)
		
		var _struct = json_parse(_json)
		//global.elapsed_time = _struct.PlayTime
		global.Room = _struct.level
		global.DethAm = _struct.deth
		
		file_text_close(_file)
		
		
	
	}
		if file_exists("save_file_2") && global.Load_data = 2{
			
			
		var _file = file_text_open_read("save_file_2");
			
		var _json = file_text_read_string(_file)
		
		var _struct = json_parse(_json)
		
		//global.elapsed_time = _struct.PlayTime
		global.Room = _struct.level
		global.DethAm = _struct.deth
		
		file_text_close(_file)
		
		}
		
		
}

function DeleteData(){
	
	instance_create_layer(x,y,layer,o_transition_Deth)
	
	if file_exists("save_file_1") || file_exists("save_file_2") || file_exists("save_file_3"){
		
		global.DethAm = 0
		global.Room = 1
		
		if global.Load_data = 1{
		file_delete("save_file_1")
		}
		if global.Load_data = 2{
		file_delete("save_file_2")
		}
		if global.Load_data = 3{
		file_delete("save_file_3")
		}
		
		
	}
	
	
}
