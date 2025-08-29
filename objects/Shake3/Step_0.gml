
if time >= 1{

var randX = random_range(-shakeIT_Amount,shakeIT_Amount);
var randY = random_range(-shakeIT_Amount,shakeIT_Amount);

camera_set_view_pos(view_camera[0], startCam_x + randX,startCam_y + randY)


}
time -= 1 

if time <= 1{
	
	camera_set_view_pos(view_camera[0], startCam_x,startCam_y)

	instance_destroy()
}
