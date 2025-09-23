
if redy{



if instance_exists(MyGuy){
x = MyGuy.x 
y = MyGuy.y
}else instance_destroy()
atackfaceingrightkey =  keyboard_check_pressed(ord("L")) || keyboard_check_pressed(vk_right)
atackfaceingleftkey =  keyboard_check_pressed(ord("J")) ||  keyboard_check_pressed(vk_left)
atackfaceingdowntkey =  keyboard_check_pressed(ord("K"))||  keyboard_check_pressed(vk_down)
atackfaceinguptkey =  keyboard_check_pressed(ord("I")) ||  keyboard_check_pressed(vk_up)
atackkey = keyboard_check_pressed(vk_space) && delayTime <= 1
delay = keyboard_check_pressed(vk_space) 



if mouse_check_button(1){
	
	window_mouse_set_locked(false)
}

var _maxpads = gamepad_get_device_count();


if my_con != 0

    if (gamepad_is_connected(my_con))
    {
		
		
		delay = gamepad_button_check_pressed(my_con,gp_shoulderrb)
		atackkey = gamepad_button_check_pressed(my_con,gp_shoulderrb) && delayTime <= 1
		atackfaceingrightkey = gamepad_axis_value(my_con, gp_axisrh) >= 0.5
		atackfaceingleftkey = gamepad_axis_value(my_con, gp_axisrh) <= -0.5
		atackfaceinguptkey = gamepad_axis_value(my_con, gp_axisrv) <= -0.5
		atackfaceingdowntkey = gamepad_axis_value(my_con, gp_axisrv) >= 0.5
		
		
        // do stuff with pad "i"
    }

if !instance_exists(CantAme){ 

if atackfaceingrightkey{
	
	if lastprest != 1{
		
	faceing = -1
	atacking = false
	ChangeTO = 1;
	sprite_index = sord_starter_rt_spr
	//sprite_index = sord_start_frunt_spr
	//alarm_set(0,5)
	lastprest = 1
	}
}

if atackfaceingleftkey{
	
	
	if lastprest != 2{
	faceing = 1
		
	atacking = false
	//alarm_set(0,5)
	//ChangeTO = 2;
	sprite_index = sord_starter_spr_lt
	//sprite_index = sord_start_frunt_spr
    lastprest = 2
	}
}

if atackfaceingdowntkey{
	if lastprest != 3{
	atacking = false
	
	sprite_index = sord_starter_down_spr
	
	
	lastprest = 3
	}
	
}
if atackfaceinguptkey{
	if lastprest != 4{
	atacking = false
	
	
	sprite_index = sord_starter_up_spr
	lastprest = 4
	}
	
}

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

}