image_speed = 0;
image_index = 0;

stab = false;

myTrap = instance_create_layer(x,y,layer,SpikeTrap_obj)

myTrap.myTop = self;

myTrap.image_angle = self.image_angle