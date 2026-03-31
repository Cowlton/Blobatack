draw_sprite_ext(sprite, 0, pointX , pointY,faceing,1,0,c_white,2);
draw_sprite(sowrdSprite, 0, pointX , pointY);
draw_sprite(levelDisplaySprite, 0, Target_pos.x , Target_pos.y);

var myColor = make_color_rgb(24, 60, 24); // orange
draw_set_colour(myColor)
draw_text(Target_pos.x - 32, Target_pos.y + textYOffset,"Level: " + string(global.LevelPoints[index].objectIndex))

