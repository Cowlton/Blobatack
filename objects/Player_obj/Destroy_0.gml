

if !instance_exists(o_transition)
{
	
	for (var i = 0; i < particleNum; i++){
	
	var NEWParticle = instance_create_layer(x,y,layer,DethParticle)
	var angle = (364 / particleNum) * i;
	NEWParticle.Angle = angle;
	}
	
	if room >= global.Room{
	global.DethAm += 1;
	DFR.DFR_num += 1;
	}
}



if instance_exists(Shake){
	instance_destroy(Shake)
}
if instance_exists(Shake2){
	instance_destroy(Shake2)
}
if instance_exists(Shake3){
	instance_destroy(Shake3)
}
if !instance_exists(Shake) && !instance_exists(Shake2) && !instance_exists(Shake3) {
	instance_create_layer(x,y,layer,Shake2)
}


if !instance_exists(Pergen)
{
	
	
	
if !instance_exists(o_transition_Deth)
{
	
var instancesList = ds_list_create(); // Create a temporary list to store instances

// Loop through all instances of the specified objectType
for (var i = 0; i < instance_number(Player_obj); i++)
{
    var inst = instance_find(Player_obj, i);
    ds_list_add(instancesList, inst); // Add the instance to the list
}

// Check if there is more than one instance in the list
var multipleBlobybob = ds_list_size(instancesList) > 1;

// Clean up the list
ds_list_destroy(instancesList);

//return multipleBlobybob;

if (multipleBlobybob)
{
    // Code to execute if there are multiple instances of Blobybob_obj
}
else
{
	instance_create_layer(x,y,layer,o_transition_Deth)
    // Code to execute if there is only one or no instance of Blobybob_obj
}
	
	//instance_create_layer(x,y,layer,o_transition_Deth)
}
/*
if CanDiolog = true
{

	if CreNorDeth = true{
		instance_create_layer(x,y,layer,ob_dio_restart)
	}else{
		instance_create_layer(x,y,layer,ob_dio_restart2)
	}
}*/

}