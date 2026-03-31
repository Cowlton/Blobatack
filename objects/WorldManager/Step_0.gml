if (global.Room - global.world >= 0){
	
	global.world += worlds[global.worldInt];
	global.worldInt ++;
	
}


if(keyboard_check_pressed(vk_space)){
	if(global.WorldPoints[index].objectIndex = 1){
		global.LevelPoints = [];
		room_goto(World1_room);
	}else if(global.WorldPoints[index].objectIndex = 2){
		global.LevelPoints = [];
		room_goto(World2_room);
	}
}

if(keyboard_check_pressed(vk_left)){
	faceing = -1;
	sowrdSprite = sord_starter_spr_lt
}else if(keyboard_check_pressed(vk_right)){
	faceing = 1;
	sowrdSprite = sord_starter_rt_spr;
}else if(keyboard_check_pressed(vk_up)){
	sowrdSprite = sord_starter_up_spr
}else if(keyboard_check_pressed(vk_down)){
	sowrdSprite = sord_starter_down_spr
}


var nextkey = ord("D")
var lastkey = ord("A")

if(array_length(global.WorldPoints) > index+1){

if(global.WorldPoints[index].x < global.WorldPoints[index+1].x){
	nextkey = ord("D")
}else if(global.WorldPoints[index].y < global.WorldPoints[index+1].y){
	nextkey = ord("S")
}else if(global.WorldPoints[index].y > global.WorldPoints[index+1].y){
	nextkey = ord("W")
}else if(global.WorldPoints[index].x > global.WorldPoints[index+1].x){
	nextkey = ord("A")
}

}

if(0 < index){
	
	
if(global.WorldPoints[index].x < global.WorldPoints[index-1].x){
	lastkey = ord("D")
}else if(global.WorldPoints[index].y < global.WorldPoints[index-1].y){
	lastkey = ord("S")
}else if(global.WorldPoints[index].y > global.WorldPoints[index-1].y){
	lastkey = ord("W")
}else if(global.WorldPoints[index].x > global.WorldPoints[index-1].x){
	lastkey = ord("A")
}
	
}

if (keyboard_check_pressed(nextkey)){
	
	if(array_length(global.WorldPoints) > index+1){	
		if (global.WorldPoints[index+1].Locked == true){
			global.WorldPoints[index+1].playAnum = true;
		}else{
			index ++;	
		}
	
	}
}

if (keyboard_check_pressed(lastkey)){
	if(0 < index){
		index --;
	}
	
}

var Target_pos = global.WorldPoints[index];

if (pointX !=  Target_pos.x){
	
	instance_create_layer(pointX,pointY,layer,Trail_obj);
	
	spd = speed_min * (abs( pointX - Target_pos.x) * 0.1)
	
	if(abs(pointX - Target_pos.x) <= closePoint){
		pointX = Target_pos.x
	}
	
	var dir = 1;
	
	if (pointX > Target_pos.x){
		dir = -1
	}else if (pointX < Target_pos.x){
		dir = 1
	}
	
	pointX += spd* dir;
}


if (pointY !=  Target_pos.y){
	
	instance_create_layer(pointX,pointY,layer,Trail_obj);
	
	spd = speed_min * (abs( pointY - Target_pos.y) * 0.1)
	
	if(abs(pointY - Target_pos.y) <= closePoint){
		pointY = Target_pos.y
	}
	
	var dir = 1;
	
	if (pointY > Target_pos.y){
		dir = -1
	}else if (pointY < Target_pos.y){
		dir = 1
	}
	
	pointY += spd* dir;
}


