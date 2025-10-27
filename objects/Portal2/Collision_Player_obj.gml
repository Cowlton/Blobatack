
if canportal2 = true{
other.x = Portal1.x
other.y = Portal1.y

wepon_starter_obj.x = Portal1.x
wepon_starter_obj.y = Portal1.y


audio_play_sound(Portal_s,9,false)
}
canportal2 = false

alarm_set(0 , 14)

with Portal1{
	alarm_set(0 ,10)
	spriteTime = 6;
	canportal1 = false
}