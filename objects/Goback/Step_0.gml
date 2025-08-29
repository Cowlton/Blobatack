var _maxpads = gamepad_get_device_count();
for (var i = 0; i < _maxpads; i++)
{
    if (gamepad_is_connected(i))
    {
		if gamepad_button_check_pressed(i,gp_face1){
			if Pause.pause = false{
			room_goto(global.lastroom)
			}
			
		}
	}
	
}