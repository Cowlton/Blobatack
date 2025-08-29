offset = 250
Bspeed = 10
home = instance_create_layer(x,y - 60 ,layer, Home_obj)
settings = instance_create_layer(x,y + 90 ,layer, Settings_obj)
levels = instance_create_layer(x,y + 230 ,layer, Levels_obj)




back = instance_create_layer(x,y -offset ,layer, PauseBACK)

cooldown = 0


pause = false
canSwitch = true
chosen = home
UIelements = [home,settings,levels];
Pres = 0