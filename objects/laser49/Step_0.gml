if place_meeting(x,y,lazzForPer){
mylaz = instance_nearest(x,y,lazzForPer)
	
}





image_angle = mylaz.image_angle
image_xscale = 5

while !place_meeting(x,y,[ground_ob, movingGround]){
	image_xscale += 1
}

beam.x += lengthdir_x(image_xscale,1)// change+=
beam.y += lengthdir_y(image_xscale,1)

