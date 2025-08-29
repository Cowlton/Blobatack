var text = "Level:" + string(Text);
var text_width = string_width(text);

draw_set_font(LEVEL)
draw_set_color(c_green)
// Calculate the x position to center the text
var x_centered = x - text_width / 2;

// Draw the centered text
draw_text(x_centered, y, text);




