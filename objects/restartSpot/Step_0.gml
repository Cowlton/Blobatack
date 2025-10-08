  if hasAdded == false{
	global.Badcount += 1;
	hasAdded = true
   }
   
if !instance_exists(myGuy){
restart_obj.show = false

global.Badcount --;

instance_destroy()	


}else{

if global.Badcount != 0{

 var count = 0;
    var stored_id = myGuy.id;
 

    with (myGuy.object_index) {
        if id != stored_id {
            count += 1;
        }  




if count == (global.Badcount -1) {
	restart_obj.show = true
}else{
	restart_obj.show = false
}

}

}

}