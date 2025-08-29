audio_play_sound(lose,10,false)
enum statesD{
	OUT,
	IN
}
state = statesD.OUT
CangoNext = true
spr = s_tans_sq_DETH;
sprw = sprite_get_width(spr)
sprh = sprite_get_height(spr)

xmax = room_width div sprw;
ymax = room_height div sprh;
imax = sprite_get_number(spr)
//Sct image_speed
sub_image_index_inc = sprite_get_speed(spr)/room_speed;
sub_image_index = 0;

col = c_white;



//global.DethTransistion = true