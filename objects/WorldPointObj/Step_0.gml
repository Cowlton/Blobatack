if(objectIndex <= global.worldInt){
Locked = false;	
}else{
	Locked = true;	
}

if (playAnum == true){

if anumDuration > 0{

var randX = x+random_range(-_shake,_shake);
var randY = y+random_range(-_shake,_shake);


posX = randX;
posY = randY;

anumDuration -= anumSpeed;

}else{
	
	posX = x;
	posY = y;
	playAnum = false;
	anumDuration = 1;
}

}