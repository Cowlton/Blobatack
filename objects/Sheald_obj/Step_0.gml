if step = 0 image_index = 1
if step = 1 image_index = 1
if step = 2 image_index = 0
if step = 3 image_index = 0

if step = 4 step = 0

if sholddie = true && image_index != 0{
	instance_change(Sheald_deth,10)
	if !instance_exists(Shake) && !instance_exists(Shake2) && !instance_exists(Shake3){
	instance_create_layer(other.x, other.y ,layer ,Shake3);
	}
	audio_play_sound(KillGoast,9,false)
}
if sholddie = true && image_index = 0{
	sholddie = false
}

