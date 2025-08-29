if tranfering == true{
	if go_next == false{
		if time >= 0{
			if DFR.DFR_num >= 1{
			TR_speed = DFR.DFR_num
			}else{
				TR_speed = 1.5
			}
			time -= 0.000005 * TR_speed * delta_time 
			
		}
		
		if time <= 1{
			go_next = true;
			time = Transfer_time;
			scale = 1
		}
	}
	if DFR.DFR_num != 0 && go_next == true{
		scale += 0.5;
		DFR.DFR_num -= 1
		N_deths += 1
		go_next = false
	}
	if DFR.DFR_num == 0 {
		
		tranfering = false;
	}
}

if scale >= 1{
	scale -= 0.00001 * delta_time
}

if instance_exists(o_transition) && o_transition.canContinue == true{
	if has_ben_used = true{
	has_ben_used = false
	
	N_deths = 0

	Transfer_time = 0

	tranfering = false;

	time = Transfer_time

	go_next = false;

	scale = 1

	hasUpdated = false

	TR_speed = 0

	has_ben_used = false;

	}
}