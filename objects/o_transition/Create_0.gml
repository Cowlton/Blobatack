
enum states{
	OUT,
	IN
}
state = states.OUT
CangoNext = true
spr = s_tans_sq;
sprw = sprite_get_width(spr)
sprh = sprite_get_height(spr)

xmax = room_width div sprw;
ymax = room_height div sprh;
imax = sprite_get_number(spr)
//Sct image_speed
sub_image_index_inc = sprite_get_speed(spr)/room_speed;
sub_image_index = 0;

col = c_white;

canContinue = true// this will = faslse when i fix the NEW DETH thing