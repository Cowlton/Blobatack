if sprite_index = sord_starter_hit_left_spr && atacking = true{
	sprite_index = sord_start_spr_lt
	image_speed = 2
	atacking = false
	attackts = false
	
}
if sprite_index = sord_starter_hit_right_spr && atacking = true{
	sprite_index = sord_start_right
	image_speed = 2
	atacking = false
	attackts = false
}
if sprite_index = sord_starter_hit_up_spr && atacking = true{
	sprite_index = sord_start_up_spr
	image_speed = 2
	atacking = false
	attackts = false
}
if sprite_index = sord_starter_hit_down_spr && atacking = true{
	sprite_index = sord_start_down_spr
	image_speed = 2
	atacking = false
	attackts = false
}


with Player_obj att = false