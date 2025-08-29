lf_check = instance_create_layer(x - 64 ,y,layer,Blocker_check)
rt_check = instance_create_layer(x + 64 ,y,layer,Blocker_check)
up_check = instance_create_layer(x  ,y - 64,layer,Blocker_check)
dn_check = instance_create_layer(x  ,y + 64,layer,Blocker_check)
	
checks = [lf_check,rt_check,up_check,dn_check]