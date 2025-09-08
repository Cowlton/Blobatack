



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

