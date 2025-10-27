if !CanApear{
	if CanPo = true{
	if global.Room <= room
	global.Room +=1
	instance_create_layer(x,y,layer,o_transition)
	audio_play_sound(FinishS,10,false)
	Player_obj.x = x
	Player_obj.y = y
	with Player_obj instance_change(PlayerPort,false)
	instance_destroy(wepon_starter_obj)
	
	
	save_game()
	
	CanPo = false
	
	}
}