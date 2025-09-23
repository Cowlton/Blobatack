if instance_exists(MyGuy){
x = MyGuy.x 
y = MyGuy.y
}else instance_destroy()
atackfaceingrightkey = keyboard_check(ord("L"))
atackfaceingleftkey = keyboard_check(ord("J"))
atackfaceingdowntkey = keyboard_check(ord("K"))
atackfaceinguptkey = keyboard_check(ord("I"))
atackkey = keyboard_check_pressed(vk_space) && delayTime <= 1
delay = keyboard_check_pressed(vk_space)

if atackfaceingrightkey{
	if sprite_index != sord_starter_hit_right_spr
	{
	atacking = false
	}
	sprite_index = sord_starter_spr_lt
	
}

if atackfaceingleftkey{
	if sprite_index != sord_starter_hit_left_spr
	{
	atacking = false
	}
	sprite_index = sord_starter_rt_spr
	
}

if atackfaceingdowntkey{
	if sprite_index != sord_starter_hit_up_spr
	{
	atacking = false
	}
	sprite_index = sord_starter_up_spr
	
}
if atackfaceinguptkey{
	if sprite_index != sord_starter_down_spr
	{
	atacking = false
	}
	sprite_index = sord_starter_down_spr
	
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

if atackkey && sprite_index = sord_starter_rt_spr && atacking = false{
	
	atacking = true
	sprite_index = sord_starter_hit_right_spr
	image_speed = 2
	with Player_obj att = false
	audio_play_sound(attack,8,false)
	
}
if atackkey && sprite_index = sord_starter_spr_lt && atacking = false{
	
	atacking = true
	sprite_index = sord_starter_hit_left_spr
	image_speed = 2
	with Player_obj att = false
	audio_play_sound(attack,8,false)
	
}

if atackkey && sprite_index = sord_starter_up_spr && atacking = false{
	
	atacking = true
	sprite_index = sord_starter_hit_up_spr
	image_speed = 2
	with Player_obj att = false
	audio_play_sound(attack,8,false)
	
}

if atackkey && sprite_index = sord_starter_down_spr && atacking = false{
	
	atacking = true
	sprite_index = sord_starter_hit_down_spr
	image_speed = 2
	with Player_obj att = false
	audio_play_sound(attack,8,false)
	
}

