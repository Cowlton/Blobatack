if instance_exists(o_transition){
	if o_transition.canContinue == false{
		if hasUpdated = false{
		if DFR.DFR_num <= 3{
			Transfer_time = 6 / DFR.DFR_num;
		}else if DFR.DFR_num <= 5 {
			Transfer_time = 8 / DFR.DFR_num;
		}else if DFR.DFR_num <= 8{
			Transfer_time = 15 / DFR.DFR_num;
		}else if DFR.DFR_num <= 10{
			Transfer_time = 20 / DFR.DFR_num;
		}

	time = Transfer_time
	tranfering = true;
	hasUpdated = true;
	
	has_ben_used = true;
}
}

draw_set_color(c_green)
draw_set_font(Level_font);

draw_text_transformed(x,y - 100,"New Deaths ",1,1,0 )

draw_text_transformed(x,y,string(N_deths),scale,scale,0)
	
}

