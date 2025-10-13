if instance_exists(Player_obj){

if x >= Player_obj.x{
	if faceing = 1{
	image_index = 1
	image_speed = 1
	faceing = -1
	}
}
if x <= Player_obj.x{
	if faceing = -1{
	image_index = 1
	image_speed = 1
	faceing = 1
	}
}

if x >= Player_obj.x + 10 || x <= Player_obj.x - 10 && (!x >= Player_obj.x + 11 || !x <= Player_obj.x - 11){
	image_index = 0
	image_speed = 0
	sprite_index = blobytheglob_spr
}
if x = Player_obj.x {
	image_index = 0
	image_speed = 0

}


if y >= Player_obj.y + 10 || y <= Player_obj.y - 10 &&( !y >= Player_obj.y + 11 || !y <= Player_obj.y - 11){
	sprite_index = blobytheglob_spr
}
if y >= Player_obj.y + 11{
	sprite_index = blobytheglob_Up_spr
}
if y <= Player_obj.y - 11{
	sprite_index = blobytheglob_Down_spr
}

}
if instance_exists(Blobybob_Begining){

if x >= Blobybob_Begining.x{
	if faceing = 1{
	image_index = 1
	image_speed = 1
	faceing = -1
	}
}
if x <= Blobybob_Begining.x{
	if faceing = -1{
	image_index = 1
	image_speed = 1
	faceing = 1
	}
}

if x >= Blobybob_Begining.x + 10 || x <= Blobybob_Begining.x - 10 && (!x >= Blobybob_Begining.x + 11 || !x <= Blobybob_Begining.x - 11){
	image_index = 0
	image_speed = 0
	sprite_index = blobytheglob_spr
}
if x = Blobybob_Begining.x {
	image_index = 0
	image_speed = 0

}


if y >= Blobybob_Begining.y + 10 || y <= Blobybob_Begining.y - 10 &&( !y >= Blobybob_Begining.y + 11 || !y <= Blobybob_Begining.y - 11){
	sprite_index = blobytheglob_spr
}
if y >= Blobybob_Begining.y + 11{
	sprite_index = blobytheglob_Up_spr
}
if y <= Blobybob_Begining.y - 11{
	sprite_index = blobytheglob_Down_spr
}

}