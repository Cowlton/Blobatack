atacking = false
if sprite_index = sord_starter_hit_left_spr{
	sprite_index = sord_starter_spr_lt
	image_speed = 2
	instance_create_layer(x-80,y,layer,HitWall)
}
if sprite_index = sord_starter_hit_right_spr{
	sprite_index = sord_starter_spr
	image_speed = 2
	instance_create_layer(x+80,y,layer,HitWall)
}
if sprite_index = sord_starter_hit_up_spr{
	sprite_index = sord_starter_up_spr
	image_speed = 2
	instance_create_layer(x,y-80,layer,HitWall)
}
if sprite_index = sord_starter_hit_down_spr{
	sprite_index = sord_starter_down_spr
	image_speed = 2
	instance_create_layer(x,y+80,layer,HitWall)
}