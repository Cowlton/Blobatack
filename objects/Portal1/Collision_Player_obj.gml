
if canportal1 = true{
other.x = Portal2.x
other.y = Portal2.y
audio_play_sound(Portal_s,9,false)
}
canportal1 = false

alarm_set(0 , 10)

with Portal2{
	alarm_set(0 , 10)
	canportal2 = false
}