

// diferent every time
randomize();
if !( Xpos.x < 35 ||  Xpos.y < 35 ||  Xpos.x > room_width - 35 ||  Xpos.y > room_height - 35) {


 MoveTimes = irandom_range(2, 3);



if (Blokstoplace >= 0)
{
	
if RandomeMove = 1{
	


// move right
var inst = collision_line(x, y, room_width, y, ground_ob, false, true);

// Loop through all collision instances along the line
if (inst != noone) {
    var obj = inst;
	
    var dist = point_distance(x, y, obj.x, obj.y);

    if (dist < min_distance) {
        min_distance = dist;
        closest = obj;
    }
}



if ( inst != noone &&  inst != id) {
    // Collision occurred, and 'first_collision_instance' contains the ID of the first object hit
    // Your code here

	
		x = closest.x
		y = closest.y
		
		
		x -= MoveAm
		myBlocker = instance_create_layer(x + 32,y + 32,layer,Blocker)
		Xpos.y = y
		Xpos.x = x
		RandomeMove = irandom_range(3, 4); 
		var MoveTimes = irandom_range(2, 4);
}
	if (inst = noone) {
	 Xpos.x += MoveAm * MoveTimes;
		
		
		var BLOCK1 = collision_line(Xpos.x + 32, Xpos.y + 32, Xpos.x + 32, room_height, Blocker, false, true);
		var BLOCK2 = collision_line(Xpos.x + 32, Xpos.y + 32, Xpos.x + 32, 0, Blocker, false, true);
		if BLOCK1 != noone && BLOCK2 != noone
		{
			 Xpos.x -= MoveAm
		}
	if !place_meeting(Xpos.x, Xpos.y, Avoid)
	{
		
	 
        x = Xpos.x;
		
		CurrGround = instance_create_layer(x,y,layer,ground_ob)
		
		
		spotX = x
		spotY = y
		
		
		x -= MoveAm
		
		if !place_meeting(x, y, Avoid)
		{
		instance_create_layer(x + 32,y + 32,layer,Blocker)
		instance_create_layer(x+32,y+32,layer,Vampier_obj)
		}
		Blokstoplace -= 1
		RandomeMove = irandom_range(3, 4); 
		var MoveTimes = irandom_range(2, 4);
		}else{//place_meeting(Xpos.x, Xpos.y, Avoid)
		Xpos.y = y
		Xpos.x = x
		//x -= MoveAm
		
		RandomeMove = irandom_range(1, 2); 
		var MoveTimes = irandom_range(2, 4);
		}
	Xpos.x = x
	Xpos.y = y
	}else if (inst != noone && inst != id) {
	    x = closest.x
		y = closest.y
		
		
		x -= MoveAm
		
		Xpos.y = y
		Xpos.x = x
		RandomeMove = irandom_range(3, 4); 
		var MoveTimes = irandom_range(2, 4);
	}

}
       
if RandomeMove = 2{
	
	//left
var inst = collision_line(x, y, 0, y, ground_ob, false, true);

// Loop through all collision instances along the line
if (inst != noone) {
    var obj = inst;
    var dist = point_distance(x, y, obj.x, obj.y);

    if (dist < min_distance) {
        min_distance = dist;
        closest = obj;
    }
}


	
	if (inst != noone &&  inst != id) {
		
		 x = closest.x
		y = closest.y
		
		x += MoveAm
		myBlocker = instance_create_layer(x + 32,y + 32,layer,Blocker)
		Xpos.y = y
		Xpos.x = x
		RandomeMove = irandom_range(3, 4); 
		var MoveTimes = irandom_range(2, 4);
	}
	if (inst = noone) {
	 Xpos.x -= MoveAm * MoveTimes;
		
		var BLOCK1 = collision_line(Xpos.x + 32, Xpos.y + 32, Xpos.x + 32, room_height, Blocker, false, true);
		var BLOCK2 = collision_line(Xpos.x + 32, Xpos.y + 32, Xpos.x + 32, 0, Blocker, false, true);
		if BLOCK1 != noone && BLOCK2 != noone
		{
			 Xpos.x += MoveAm
		}
	if !place_meeting(Xpos.x, Xpos.y, Avoid)
	{
		
	 
        x = Xpos.x;
		
		CurrGround = instance_create_layer(x,y,layer,ground_ob)
		
	
		spotX = x
		spotY = y
		
		
		x += MoveAm
		
		if !place_meeting(x, y, Avoid)
		{
		instance_create_layer(x + 32,y + 32,layer,Blocker)
		instance_create_layer(x+32,y+32,layer,Vampier_obj)
		}
		Blokstoplace -= 1
		RandomeMove = irandom_range(3, 4); 
		var MoveTimes = irandom_range(2, 4);
		}else{//place_meeting(Xpos.x, Xpos.y, Avoid)
		Xpos.y = y
		Xpos.x = x
		//x += MoveAm
		
		RandomeMove = irandom_range(1, 2); 
		var MoveTimes = irandom_range(2, 4);
		}
	Xpos.x = x
	Xpos.y = y
	}else if (inst != noone && inst != id){
	    x = closest.x
		y = closest.y
		
		x += MoveAm
		
		Xpos.y = y
		Xpos.x = x
		RandomeMove = irandom_range(3, 4); 
		var MoveTimes = irandom_range(2, 4);
	}

}
	
	
	
 if RandomeMove = 4{
	 //UP
	 
	 
	 var inst = collision_line(x, y, x, room_height, ground_ob, false, true);

// Loop through all collision instances along the line
if (inst != noone) {
    var obj = inst;
	
    var dist = point_distance(x, y, obj.x, obj.y);

    if (dist < min_distance) {
        min_distance = dist;
        closest = obj;
    }
}


	 if (inst != noone && inst != id) {
		
		 x = closest.x
		y = closest.y
		 Xpos.y = y
		Xpos.x = x
		
		y -= MoveAm
	    myBlocker = instance_create_layer(x + 32,y + 32,layer,Blocker)
		Xpos.y = y
		Xpos.x = x
		RandomeMove = irandom_range(1, 2); 
		var MoveTimes = irandom_range(2, 4);
	 }
	 
	if (inst = noone) {
	 Xpos.y += MoveAm * MoveTimes;
		
		var BLOCK1 = collision_line(Xpos.x + 32, Xpos.y + 32, room_width, Xpos.y + 32, Blocker, false, true);
		var BLOCK2 = collision_line(Xpos.x + 32, Xpos.y + 32, 0, Xpos.y + 32, Blocker, false, true);
		if BLOCK1 != noone && BLOCK2 != noone
		{
			 Xpos.y -= MoveAm
		}
	
	if !place_meeting(Xpos.x, Xpos.y,Avoid)
	{
	  // Move up
	   spotY = y
        y = Xpos.y;
		
		CurrGround = instance_create_layer(x,y,layer,ground_ob)
	
	
		spotX = x
		spotY = y
		
		y -= MoveAm
		
		
		if !place_meeting(x, y, Avoid)
		{
		instance_create_layer(x + 32,y + 32,layer,Blocker)
		instance_create_layer(x+32,y+32,layer,Vampier_obj)
		}
		Blokstoplace -= 1
		RandomeMove = irandom_range(1, 2); 
		var MoveTimes = irandom_range(2, 4);
     }else {//place_meeting(Xpos.x, Xpos.y, Avoid)
		Xpos.y = y
		Xpos.x = x
		//y += -MoveAm
		
		RandomeMove = irandom_range(3, 4); 
		var MoveTimes = irandom_range(2, 4);
	}
	Xpos.x = x
	Xpos.y = y
	}else if (inst != noone && inst != id)
	{
		
		
		x = closest.x
		y = closest.y
		
		
		y -= MoveAm
	    
		Xpos.y = y
		Xpos.x = x
		RandomeMove = irandom_range(1, 2); 
		var MoveTimes = irandom_range(2, 4);
	}
}
       
if RandomeMove = 3{
	
	var inst = collision_line(x, y, x, 0, ground_ob, false, true);

// Loop through all collision instances along the line
if (inst != noone) {
    var obj = inst;
	
    var dist = point_distance(x, y, obj.x, obj.y);

    if (dist < min_distance) {
        min_distance = dist;
        closest = obj;
    }
}

	 if (inst != noone && inst != id) {
	
		 x = closest.x
		y = closest.y
		Xpos.y = y
		Xpos.x = x
		
		y += MoveAm
	    instance_create_layer(x + 32,y + 32,layer,Blocker)
		Xpos.y = y
		Xpos.x = x
		RandomeMove = irandom_range(1, 2); 
		var MoveTimes = irandom_range(2, 4);
	 }
	if (inst = noone) {
	 Xpos.y -= MoveAm * MoveTimes;
		
		var BLOCK1 = collision_line(Xpos.x + 32, Xpos.y + 32, room_width, Xpos.y + 32, Blocker, false, true);
		var BLOCK2 = collision_line(Xpos.x + 32, Xpos.y + 32, 0, Xpos.y + 32, Blocker, false, true);
		if BLOCK1 != noone && BLOCK2 != noone
		{
			 Xpos.y += MoveAm
		}
	if !place_meeting(Xpos.x, Xpos.y, Avoid)
	{
	
        y = Xpos.y;
		
		CurrGround = instance_create_layer(x,y,layer,ground_ob)
		
		spotX = x
		spotY = y
		
		
		y += MoveAm
	    
		if !place_meeting(x, y, Avoid)
		{
		instance_create_layer(x + 32,y + 32,layer,Blocker)
		instance_create_layer(x+32,y+32,layer,Vampier_obj)
		}
		Blokstoplace -= 1
		RandomeMove = irandom_range(1, 2); 
		var MoveTimes = irandom_range(2, 4);
		}else{//place_meeting(Xpos.x, Xpos.y, Avoid)
		Xpos.y = y
		Xpos.x = x
		//y += MoveAm
		
		RandomeMove = irandom_range(3, 4); 
		var MoveTimes = irandom_range(2, 4);
		}
	Xpos.x = x
	Xpos.y = y
	}else if (inst != noone && inst != id){
	    x = closest.x
		y = closest.y
		
		
	y += MoveAm
	
		Xpos.y = y
		Xpos.x = x
		RandomeMove = irandom_range(1, 2); 
		var MoveTimes = irandom_range(2, 4);
	}
}
}

}
	
	  if x < 35{
	 
	  x = CurrGround
	 Xpos.y = y
	 Xpos.x = x
	 RandomeMove = 1;  
	 var MoveTimes = irandom_range(2, 4);
	 }
	 if y < 35{
	 y = CurrGround
	 Xpos.y = y
	 Xpos.x = x
	   
	 RandomeMove = 4;  
	var MoveTimes = irandom_range(2, 4);
	 }
	 if x > room_width - 35{
	   x = CurrGround
	 Xpos.y = y
	 Xpos.x = x
	 RandomeMove = 2;  
	var MoveTimes = irandom_range(2, 4);
	 }
	 if y > room_height - 35{
	 y = CurrGround
	 Xpos.y = y
	 Xpos.x = x
	 RandomeMove = 3;  
	var MoveTimes = irandom_range(2, 4);
	 }
	 
	 
	 if Xpos.x < 35{
	 Xpos.y = y
	 Xpos.x = x
	 RandomeMove = 1;  
	 var MoveTimes = irandom_range(2, 4);
	 }
	 if Xpos.y < 35{
	 Xpos.y = y
	 Xpos.x = x
	 RandomeMove = 4;  
	var MoveTimes = irandom_range(2, 4);
	 }
	 if Xpos.x > room_width - 35{
	  Xpos.y = y
	 Xpos.x = x
	 RandomeMove = 2;  
	var MoveTimes = irandom_range(2, 4);
	 }
	 if Xpos.y > room_height - 35{
	Xpos.y = y
	 Xpos.x = x
	 RandomeMove = 3;  
	var MoveTimes = irandom_range(2, 4);
	 }
	


if Blokstoplace <= 0{
	instance_create_layer(x + 32,y + 32,layer, finish_forPG)
}