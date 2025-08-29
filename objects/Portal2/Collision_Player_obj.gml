
if canportal2 = true{
other.x = Portal1.x
other.y = Portal1.y
audio_play_sound(Portal_s,9,false)
}
canportal2 = false

alarm_set(0 , 10)

with Portal1{
	alarm_set(0 ,10)
	canportal1 = false
}