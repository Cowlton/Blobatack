if atacking = true{
	
	with other instance_change(Blobybob_badDeth, 10)
	audio_play_sound(KillCopycat,9,false)
	instance_create_layer(other.x, other.y ,layer ,Partical_Bad);
	if !instance_exists(Shake) && !instance_exists(Shake2) && !instance_exists(Shake3){
	instance_create_layer(other.x, other.y ,layer ,Shake3);
	}
	
instance_create_layer(other.x, other.y ,layer ,Partical_Bad);
instance_create_layer(other.x, other.y ,layer ,Partical_Bad);
instance_create_layer(other.x, other.y ,layer ,Partical_Bad);
instance_create_layer(other.x, other.y ,layer ,Partical_Bad);
instance_create_layer(other.x, other.y ,layer ,Partical_Bad);
instance_create_layer(other.x, other.y ,layer ,Partical_Bad);
instance_create_layer(other.x, other.y ,layer ,Partical_Bad);
	
}
