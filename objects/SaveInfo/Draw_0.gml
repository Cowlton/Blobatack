
draw_set_font(Deth_font)

var text_width = string_width(Select.load);
var x_centered = x - text_width / 2;
// Draw the centered text
draw_text(x_centered ,y ,Select.load)

text_width = string_width(Select.Deths);
x_centered = x - text_width / 2;

draw_text(x_centered ,y + DethsOfsetY ,Select.Deths)

text_width = string_width(Select.Levels);
x_centered = x - text_width / 2;

draw_text(x_centered  ,y + LevelOfsetY ,Select.Levels)


