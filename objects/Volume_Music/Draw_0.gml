//draw_self()
draw_sprite_ext(slider_spr,image_index,Slider_pos,y,faceing,1,0,c_white,1);
draw_set_font(Deth)

var text = "Volume:" + string(global.Volume_music) + "%";
var text_width = string_width(text);

// Calculate the x position to center the text
var x_centered = x - text_width / 2;

// Draw the centered text
draw_text(x_centered, y- ofset, text);

