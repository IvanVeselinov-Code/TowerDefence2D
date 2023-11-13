draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(RobotoMono1);

draw_set_color(c_red);

if (t = ""){
	if(global.wave = 1){
		draw_text(640, 360, "Get ready for the 1st Wave");
	}
	else
	draw_text(640, 360, "Wave " + string(global.wave));
}
else{
	draw_text(640, 360, string(t));
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);