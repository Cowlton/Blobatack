if instance_exists(MyGuy){
x = MyGuy.x 
y = MyGuy.y
}else instance_destroy()




delay = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_shoulderrb)

if atackfaceingrightkey = true{
	sprite_index = sord_start_right
	atacking = false
atackfaceingrightkey = false
atackfaceingleftkey = false
atackfaceingdowntkey = false
atackfaceinguptkey = false
		
	
}

if atackfaceingleftkey = true{
	sprite_index = sord_start_spr_lt
	atacking = false
	atackfaceingrightkey = false
atackfaceingleftkey = false
atackfaceingdowntkey = false
atackfaceinguptkey = false
}

if atackfaceingdowntkey = true{
	sprite_index = sord_start_down_spr
	atacking = false
	atackfaceingrightkey = false
atackfaceingleftkey = false
atackfaceingdowntkey = false
atackfaceinguptkey = false
}
if atackfaceinguptkey = true{
	sprite_index = sord_start_up_spr
	atacking = false
	atackfaceingrightkey = false
atackfaceingleftkey = false
atackfaceingdowntkey = false
atackfaceinguptkey = false
}
if delay{
	delayTime += 2
}
if delayTime >= 0 && !delay{
	delayTime -= 1
}
/*
if atacking = false{

	if sprite_index = sord_starter_hit_left_spr{
	sprite_index = sord_starter_spr_lt
	image_speed = 2*
}
if sprite_index = sord_starter_hit_right_spr{
	sprite_index = sord_starter_spr
	image_speed = 2
}
if sprite_index = sord_starter_hit_up_spr{
	sprite_index = sord_starter_up_spr
	image_speed = 2
}
if sprite_index = sord_starter_hit_down_spr{
	sprite_index = sord_starter_down_spr
	image_speed = 2
}
}*/

if atackkey && sprite_index = sord_start_right && atacking = false{
	
	atacking = true
	sprite_index = sord_starter_hit_right_spr
	image_speed = 2
	with Player_obj att = false
	audio_play_sound(attack,8,false)
	
}
if atackkey && sprite_index = sord_start_spr_lt && atacking = false{
	
	atacking = true
	sprite_index = sord_starter_hit_left_spr
	image_speed = 2
	with Player_obj att = false
	audio_play_sound(attack,8,false)
	
}

if atackkey && sprite_index = sord_start_up_spr && atacking = false{
	
	atacking = true
	sprite_index = sord_starter_hit_up_spr
	image_speed = 2
	with Player_obj att = false
	audio_play_sound(attack,8,false)
	
}

if atackkey && sprite_index = sord_start_down_spr && atacking = false{
	
	atacking = true
	sprite_index = sord_starter_hit_down_spr
	image_speed = 2
	with Player_obj att = false
	audio_play_sound(attack,8,false)
	
}

