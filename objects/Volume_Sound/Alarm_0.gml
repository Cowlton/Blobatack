Sli_speed = slider_TopSpeed
slider_spr = PlayerMoveSide


var _langth = image_xscale
var _begining = x - _langth * 38
var _end = x + _langth * 38
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

 alarm_set(0,0)
 
 alarm_off = true