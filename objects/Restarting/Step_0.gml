if keyboard_check(ord("R")){
	room_restart()

}

var _maxpads = gamepad_get_device_count();

for (var i = 0; i < _maxpads; i++)
{
    if (gamepad_is_connected(i))
    {
		
		if gamepad_button_check(i,gp_face4)
		{
			room_restart()
		}
		
        // do stuff with pad "i"
    }
}

/*
if keyboard_check_pressed(ord("T")){
	room_goto_next()
	
}
if keyboard_check_pressed(ord("Q")){
	room_goto_previous()	
}*/