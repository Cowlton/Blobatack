if sprite_index = sord_starter_hit_left_spr && atacking = true{
	sprite_index = sord_starter_spr_lt
	image_speed = 2
	atacking = false
}
if sprite_index = sord_starter_hit_right_spr && atacking = true{
	sprite_index = sord_starter_spr
	image_speed = 2
	atacking = false
}
if sprite_index = sord_starter_hit_up_spr && atacking = true{
	sprite_index = sord_starter_up_spr
	image_speed = 2
	atacking = false
}
if sprite_index = sord_starter_hit_down_spr && atacking = true{
	sprite_index = sord_starter_down_spr
	image_speed = 2
	atacking = false
}


with Player_obj att = false