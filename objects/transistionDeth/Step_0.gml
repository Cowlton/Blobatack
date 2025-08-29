
if instance_exists(Player_obj){
if (willActivate == false){
ActivationTime = abs(Player_obj.x - x) * delay_per_pixel; // delay_per_pixel is how many steps to wait per unit of distance
}
if (ActivationTime > 0) {
    ActivationTime -= 1;
} else if (ActivationTime == 0) {
  isActive = true
  image_speed = 1
  
}

}
