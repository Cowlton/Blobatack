draw_self()
draw_set_font(LEVEL)
draw_set_color(c_green)
draw_text(x - Levle_offset ,y - 80,"Save: 1")
draw_set_font(Deth)

var text_width = string_width(Level_Text);
var x_centered = x - text_width / 2;
// Draw the centered text
draw_text(x_centered + 150,y - Spaceing_offset  - 10,Level_Text)
var text_width2 = string_width(Deth_Text);
var x_centered2 = x - text_width2 / 2;
draw_text(x_centered2 + 150,y + Spaceing_offset  - 10,Deth_Text)