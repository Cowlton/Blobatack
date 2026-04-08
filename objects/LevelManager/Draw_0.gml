draw_sprite_ext(sprite, 0, pointX , pointY,faceing,1,0,c_white,2);
draw_sprite(sowrdSprite, 0, pointX , pointY);
draw_sprite(levelDisplaySprite, LevelDisplayIndex, Target_pos.x , Target_pos.y);

var myColor = make_color_rgb(24, 60, 24); // orange
draw_set_colour(myColor)

var Text = "Level: " + string(global.LevelPoints[index].objectIndex);
var centerdX = Target_pos.x - string_width(Text) / 2;

draw_text(centerdX, Target_pos.y + textYOffset,Text);
