randomize();

if step = 0 image_index = 0
if step = 2 image_index = 1
if step = 3 image_index = 2
if step = 5 step = 0

if sholddie = true && image_index != 2 && HP <= 1{
	instance_destroy()
	audio_play_sound(Boss_deth,9,false)
}else if sholddie = true && image_index != 2 && HP >= 0{
	audio_play_sound(BossHITsound,9,false)
	image_index = 2
	canT = true
	HP -= 1
	step = 3

	image_speed = 0
   canKill = false
}
if sholddie = true && image_index = 2{
	sholddie = false
}

if canT = true && step = 3{
// Generate a random index within the range of instances
var randomIndex = irandom(instance_number(bosspoint) - 1);

// Find the instance using the random index
var point = instance_find(bosspoint, randomIndex);

// Get the x and y coordinates of the selected instance
x = point.x;
y = point.y;
if canKill = true{
audio_play_sound(Boss_tela,10,false)
}
canT = false
canKill = true

}
if step = 4{
	canT = true
}


// Create an object (e.g., obj_time_controller) and place this code in its Step Event



// Use delta_time_scaled in your calculations instead of delta_time