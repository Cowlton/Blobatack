// Calculate hours, minutes, and seconds
var hours = floor(global.elapsed_time / 3600);
var minutes = floor((global.elapsed_time % 3600) / 60);
var seconds = global.elapsed_time % 60;

// Display the timer with two decimal places for seconds
draw_set_color(c_green);
draw_set_font(Deth_font); // Make sure you have a font set up
draw_text(50, 50, string(hours) + "h " + string(minutes) + " m" + string_format(seconds, 2, 2) + "s");