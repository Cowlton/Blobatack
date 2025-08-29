for (var i = 0; i < particleNum; i++){
	
	var NEWParticle = instance_create_layer(x,y,layer,PixlePlace)
	var angle = (364 / particleNum) * i;
	NEWParticle.Angle = angle;
}
