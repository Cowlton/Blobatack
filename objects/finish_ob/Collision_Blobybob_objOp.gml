if image_index == 0{
	if CanPo = true{
	if LEVELfind.Room <= room
	LEVELfind.Room +=1
	instance_create_layer(x,y,layer,o_transition)
	audio_play_sound(FinishS,10,false)
	CanPo = false
	}
}