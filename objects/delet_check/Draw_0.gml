

draw_self()


if salected = 1{
draw_sprite_ext(Yes,0,x - ofset,y,image_xscale,image_yscale,0,c_white,image_alpha)
draw_sprite_ext(No,1,x + ofset,y,image_xscale,image_yscale,0,c_white,image_alpha)
}
if salected = 2{
draw_sprite_ext(Yes,1,x - ofset,y,image_xscale,image_yscale,0,c_white,image_alpha)
draw_sprite_ext(No,0,x + ofset,y,image_xscale,image_yscale,0,c_white,image_alpha)
}

