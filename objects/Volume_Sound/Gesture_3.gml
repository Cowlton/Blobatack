




var _langth = image_xscale

var _begining = x - _langth * 38

var _end = x + _langth * 38

if  (mouse_x >= _end ){
	Target_pos = _end
	Volume_num = 100
}
if (mouse_x <= _begining){
	
	Target_pos = _begining
	Volume_num = 0
}
if !(mouse_x >= _end || mouse_x <= _begining ){
	
	neadstoupdate = true
	
}




