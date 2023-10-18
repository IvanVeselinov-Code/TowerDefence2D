draw_set_color(c_blue);
if (sec < 30) {draw_set_color(c_red);}

draw_set_font(RobotoMono1);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var text = "";
text += string(mins);
text += ":";
if (sec > 9) {text += "" + string(sec);}
else if (sec < 10) {text += "0" + string(sec);}
text += ".";
text += string(mil);

draw_text(640, 100, text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);