if step = 0 image_index = 0
if step = 1 image_index = 0
if step = 2 image_index = 1
if step = 3 image_index = 1


if step = 4 step = 0


if image_index = 0{
	if instance_exists(Player_obj){
	Player_obj.On = true
	}
	if instance_exists(Blobybob_bad_obj){
	Blobybob_bad_obj.On = true
	}
}
if image_index = 1 
{
	if instance_exists(Player_obj){
	Player_obj.On = false
	}
	if instance_exists(Blobybob_bad_obj){
	Blobybob_bad_obj.On = false
	}
}
