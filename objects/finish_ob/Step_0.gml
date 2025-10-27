if !instance_exists(CoppyCat_obj) and !instance_exists(Vampier_obj) and !instance_exists(Gohst_obj) && !instance_exists(Sheald_obj){
	if (CanApear){
	image_speed = 1	
	}
}
if !audio_is_playing(Music){
	audio_play_sound(Music,10,true)
}

