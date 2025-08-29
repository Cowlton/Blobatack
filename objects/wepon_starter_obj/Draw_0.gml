
if sprite_index = sord_starter_up_spr ||  sprite_index = sord_starter_hit_up_spr || sprite_index = sord_starter_down_spr  || sprite_index = sord_starter_hit_down_spr {
draw_sprite_ext(sprite_index,image_index,x,y,faceing,1,0,c_white,1)
}else{
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1)
}