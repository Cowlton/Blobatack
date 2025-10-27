


enemys = [Vampier_obj,Sheald_obj,CoppyCat_obj,Gohst_obj,bossfirtEn]


CanPo = true
if !instance_exists(CoppyCat_obj) and !instance_exists(Vampier_obj) and !instance_exists(Gohst_obj) && !instance_exists(Sheald_obj){
image_index = 7
image_speed = 0
CanApear = false
}else{
	image_index = 1
	image_speed = 0
	CanApear = true
}

cancreate = true
