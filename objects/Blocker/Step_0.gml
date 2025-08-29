if !place_meeting(lf_check.x,lf_check.y,ground_ob) && !place_meeting(rt_check.x,rt_check.y,ground_ob) && 
!place_meeting(dn_check.x,dn_check.y,ground_ob) && !place_meeting(up_check.x,up_check.y,ground_ob) {
	instance_destroy()
	instance_destroy(lf_check)
	instance_destroy(rt_check)
	instance_destroy(up_check)
	instance_destroy(dn_check)
}