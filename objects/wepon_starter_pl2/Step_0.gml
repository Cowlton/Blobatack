if instance_exists(MyGuy){
x = MyGuy.x 
y = MyGuy.y
}else instance_destroy()
atackfaceingrightkey = keyboard_check(ord("L")) || keyboard_check(vk_right)
atackfaceingleftkey = keyboard_check(ord("J")) || keyboard_check(vk_left)
atackfaceingdowntkey = keyboard_check(ord("K"))|| keyboard_check(vk_down)
atackfaceinguptkey = keyboard_check(ord("I")) || keyboard_check(vk_up)
atackkey = keyboard_check_pressed(vk_space) && delayTime <= 1
delay = keyboard_check_pressed(vk_space) 

if my_con != 0

    if (gamepad_is_connected(my_con))
    {
		
		window_mouse_set_locked(true)
		delay = gamepad_button_check_pressed(my_con,gp_shoulderrb)
		atackkey = gamepad_button_check_pressed(my_con,gp_shoulderrb) && delayTime <= 1
		atackfaceingrightkey = gamepad_axis_value(my_con, gp_axisrh) >= 0.5
		atackfaceingleftkey = gamepad_axis_value(my_con, gp_axisrh) <= -0.5
		atackfaceinguptkey = gamepad_axis_value(my_con, gp_axisrv) <= -0.5
		atackfaceingdowntkey = gamepad_axis_value(my_con, gp_axisrv) >= 0.5
		
		
        // do stuff with pad "i"
    }
if atackfaceingrightkey{
	
	atacking = false
	
	sprite_index = sord_starter_spr
	lastprest = atackfaceingrightkey
}

if atackfaceingleftkey{
	
	atacking = false
	
	
	sprite_index = sord_starter_spr_lt
    lastprest = atackfaceingleftkey
}

if atackfaceingdowntkey{
	
	atacking = false
	sprite_index = sord_starter_down_spr
	
	
	lastprest = atackfaceingdowntkey
	
}
if atackfaceinguptkey{
	
	atacking = false
	
	
	sprite_index = sord_starter_up_spr
	lastprest = atackfaceinguptkey
	
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

if atackkey && sprite_index = sord_starter_spr && atacking = false{
	
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

