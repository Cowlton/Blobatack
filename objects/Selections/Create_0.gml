offset = 250
Bspeed = 10


volume = Volume_Sound
erase = EraseProgress
music = Volume_Music



back = instance_create_layer(x,y -offset ,layer, PauseBACK)

cooldown = 0


pause = false
canSwitch = true
chosen = volume
UIelements = [music,volume,erase];
Pres = 0