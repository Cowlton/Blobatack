


if(showing_dialog == true){
	
	draw_set_font(Totoreal)
	var text_x = 30;
	var text_y = 18;
	var text_x2 = 1120;
	var text_y2 = 108;
	var height = 32;
	var border = 5;
	var padding = 16;
	
	height = string_height(current_dialog.message);
	
	if(sprite_get_height(current_dialog.Sprite) > height){
		height = sprite_get_height(current_dialog.Sprite);
	}
	
	height += padding * 2;
	text_x = sprite_get_width(current_dialog.Sprite) + (padding * 2);
	
	draw_set_alpha(alpha);
	
	draw_set_color(c_green);
	draw_rectangle(0, 0, display_get_gui_width(), height, false);
	
	draw_set_color(c_green + c_dkgray)
	draw_rectangle(border, border, display_get_gui_width() - border, height - border, false);
	
	draw_set_color(c_green + c_black);
	draw_rectangle((border * 2), (border * 2), display_get_gui_width() - (border * 2), height - (border * 2), false);
	
	if (current_dialog.Sprite != -1) {
		draw_sprite(current_dialog.Sprite, 0,border * 3,border * 3);
	}
	
	draw_set_color(c_green + c_dkgrey);
	draw_text_ext(text_x, text_y, current_dialog.message, 36, display_get_gui_width() - 192);
	
	draw_text_ext(text_x2, text_y2, "Press space Or B", 36, display_get_gui_width() - 192);
	alpha = lerp(alpha, 1, 0.06)
}

draw_set_alpha(1);