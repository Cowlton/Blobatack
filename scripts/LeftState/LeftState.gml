// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LeftState(GroundObjects){


isGronded = place_meeting(x+4,y,[GroundObjects])
jumpkey = keyboard_check_pressed(ord("q"));
if place_meeting(x-hsp,y,GroundObjects){
		while !place_meeting(x -sign(hsp),y,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, onewayRT, lazzer_ob]){
			x -= sign(hsp)
		}
		
		hsp = 0
	}
	if place_meeting(x,y+vsp,[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, onewayRT, lazzer_ob]){
	while(!place_meeting(x,y+sign(vsp),[ground_ob,CoppyCat_obj,Vampier_obj, movingGround, Player_obj, onewayRT, lazzer_ob])){
		y += sign(vsp)
	}
	vsp = 0
	}
	

	if isGronded{ // when on the grond
canjump = 10;
canswitch = true


	
} else {
	canjump -= 1;
	canswitch = false
}


if canjump > 0 && jumpkey{ // normal jump
	vsp = 0;
	canjump = 0;
	hsp += jumphith;
}


x -= hsp //comit to move
if grv < 5{
hsp -= grv;
}

}