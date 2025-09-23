
if !instance_exists(o_transition) && !instance_exists(o_transition_Deth)
{
if(showing_dialog == false){
	if(dialog.count() <=0){
		instance_destroy();
		with Player_obj redy = true
		if instance_exists(CoppyCat_obj)
		{
		with CoppyCat_obj redy = true
		}
		if instance_exists(wepon_starter_obj){
				wepon_starter_obj.redy = true
		}
		return;
		}
	
	current_dialog = dialog.pop();
	showing_dialog = true;
} else {
	if instance_exists(wepon_starter_obj){
		wepon_starter_obj.redy = false
	}
	if instance_exists(CoppyCat_obj)
		{
			with CoppyCat_obj redy = false
		}
if(keyboard_check_released(key_next)){
	showing_dialog = false;
	alpha = 0;
		with toreal{
		next += 1
		}
	}

}

}
var _maxpads = gamepad_get_device_count();

for (var i = 0; i < _maxpads; i++)
{
    if (gamepad_is_connected(i))
    {
		
		key_next = gamepad_button_check(i,gp_face1)
	}
	
}