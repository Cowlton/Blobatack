
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


