if(!audio_is_playing(Music) && !audio_is_playing(lose))
{
	audio_play_sound(Music,-10,true)
}
if !instance_exists(Player_obj)
{
	//audio_stop_sound(Music)
}