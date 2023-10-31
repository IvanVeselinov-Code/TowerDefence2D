

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(RobotoMono1);


if(oGold.gold < placementPrice){
	draw_set_color(c_red);
}
else
draw_set_color(c_white);
draw_text(x, y + 50, string(placementPrice));


draw_set_halign(fa_left);
draw_set_valign(fa_top);