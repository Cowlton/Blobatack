
if (LevelDisplayIndex <= 2.9){
	LevelDisplayIndex += 0.2;
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


if(keyboard_check_pressed(ord("E"))){
  room_goto(global.LevelPoints[index].objectIndex +1);
}
if(keyboard_check(ord("Q"))){
room_goto(Worlds)	
}

if (gamepad_is_connected(global.GamePad))
 {
	if gamepad_button_check_pressed(global.GamePad,gp_face2){
		room_goto(global.LevelPoints[index].objectIndex +1);
	}
	
	var nextkey = gamepad_axis_value(global.GamePad,gp_axislv) >= 0.7;
	var lastkey = gamepad_axis_value(global.GamePad,gp_axislv) <= -0.7
	
	
	
if(array_length(global.LevelPoints) > index+1){

if(global.LevelPoints[index].x < global.LevelPoints[index+1].x){
	nextkey = gamepad_axis_value(global.GamePad,gp_axislv) >= 0.7;
}else if(global.LevelPoints[index].y < global.LevelPoints[index+1].y){
	nextkey = gamepad_axis_value(global.GamePad,gp_axislh) >= 0.7;
}else if(global.LevelPoints[index].y > global.LevelPoints[index+1].y){
	nextkey = gamepad_axis_value(global.GamePad,gp_axislh) <= -0.7;
}else if(global.LevelPoints[index].x > global.LevelPoints[index+1].x){
	nextkey = gamepad_axis_value(global.GamePad,gp_axislv) <= -0.7
}

}

if(0 < index){
	
	
if(global.LevelPoints[index].x < global.LevelPoints[index-1].x){
	lastkey = ord("D")
}else if(global.LevelPoints[index].y < global.LevelPoints[index-1].y){
	lastkey = ord("S")
}else if(global.LevelPoints[index].y > global.LevelPoints[index-1].y){
	lastkey = ord("W")
}else if(global.LevelPoints[index].x > global.LevelPoints[index-1].x){
	lastkey = ord("A")
}

}
	
	
	if (keyboard_check_pressed(nextkey)){
	
	if(array_length(global.LevelPoints) > index+1){	
		if (global.LevelPoints[index+1].Locked == false){
			LevelDisplayIndex = 0;
			index ++;
		}else if (global.LevelPoints[index+1].Locked == true){
			global.LevelPoints[index+1].playAnum = true;
		}
	
	}
}

if (keyboard_check_pressed(lastkey)){
	if(0 < index){
		LevelDisplayIndex = 0;
		index --;
	}	
}
	
 }


var nextkey = ord("D")
var lastkey = ord("A")

if(array_length(global.LevelPoints) > index+1){

if(global.LevelPoints[index].x < global.LevelPoints[index+1].x){
	nextkey = ord("D")
}else if(global.LevelPoints[index].y < global.LevelPoints[index+1].y){
	nextkey = ord("S")
}else if(global.LevelPoints[index].y > global.LevelPoints[index+1].y){
	nextkey = ord("W")
}else if(global.LevelPoints[index].x > global.LevelPoints[index+1].x){
	nextkey = ord("A")
}

}

if(0 < index){
	
	
if(global.LevelPoints[index].x < global.LevelPoints[index-1].x){
	lastkey = ord("D")
}else if(global.LevelPoints[index].y < global.LevelPoints[index-1].y){
	lastkey = ord("S")
}else if(global.LevelPoints[index].y > global.LevelPoints[index-1].y){
	lastkey = ord("W")
}else if(global.LevelPoints[index].x > global.LevelPoints[index-1].x){
	lastkey = ord("A")
}
	
}

if (keyboard_check_pressed(nextkey)){
	
	if(array_length(global.LevelPoints) > index+1){	
		if (global.LevelPoints[index+1].Locked == false){
			LevelDisplayIndex = 0;
			index ++;
		}else if (global.LevelPoints[index+1].Locked == true){
			global.LevelPoints[index+1].playAnum = true;
		}
	
	}
}

if (keyboard_check_pressed(lastkey)){
	if(0 < index){
		LevelDisplayIndex = 0;
		index --;
	}
	
}

Target_pos = global.LevelPoints[index];

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


