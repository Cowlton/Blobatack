Slider_spr = Slider

slider_spr = Blobybob_spr
sowrd_spr = sord_start_right

sowrd_index = 0;

faceing = 1

Slider_pos = x

Target_pos = x

slider_TopSpeed = 0.1

ofset = 150


var _langth = image_xscale

var _begining = x - _langth / 2

var _end = x + _langth / 2

attacking = false;


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

global.Volume_music = percentage_position 

speed_min = 1
Sli_speed = slider_TopSpeed

cooldown = 1

timeToUpdate = false

neadstoupdate = false

time = 10

The_time = time


sound_instances = [attack ,Boss_deth, Boss_Talk, BossHITsound,FinishS,kill,KillGoast,KillCopycat,lose,move,Portal_s,ClickSound]

 dragging = false
  alarm_set(0,0)
  
  
  
alarm_off = true
Min_speed = 4
Speed = Min_speed
top_speed = 10

IsSelecded = false

Slider_out_obj.image_alpha = 0