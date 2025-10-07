  
   
   
if !instance_exists(myGuy){
restart_obj.image_alpha = 0
instance_destroy()	


}else{

 var count = 0;
    var stored_id = myGuy.id;
 

    with (myGuy.object_index) {
        if id != stored_id {
            count += 1;
        }  

if count == 0 {
    ShowRestart = true
	restart_obj.image_alpha = 1
}else{
	ShowRestart = false;
	restart_obj.image_alpha = 0
}

}

}