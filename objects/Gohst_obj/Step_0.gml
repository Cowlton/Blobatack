if step = 0 image_index = 0
if step = 1 image_index = 0
if step = 2 image_index = 1
if step = 3 image_index = 2
if step = 4 image_index = 2
if step = 5 step = 0


if image_index = 2{
	Delay = 5
}else if Delay >= 0{
	Delay -= 1
}


if sholddie = true && image_index != 2 && Delay <= 1{
	instance_change(gosetDeth,10)
	if !instance_exists(Shake) && !instance_exists(Shake2) && !instance_exists(Shake3){
		if instance_exists(Player_obj){
	instance_create_layer(other.x, other.y ,layer ,Shake3);
		}
	}
	audio_play_sound(KillGoast,9,false)
}
if sholddie = true && image_index = 2{
	sholddie = false
}

if instance_exists(Player_obj){

if x >= Player_obj.x{
	faceing = -1
}
if x <= Player_obj.x{
	faceing = 1
}
}

if instance_exists(Blobybob_Begining){

if x >= Blobybob_Begining.x{
	faceing = -1
}
if x <= Blobybob_Begining.x{
	faceing = 1
}
}