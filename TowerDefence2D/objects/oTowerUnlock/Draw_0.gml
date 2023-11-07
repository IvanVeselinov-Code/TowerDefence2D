
if (global.unlock != noone){
	draw_self();
	draw_set_color(c_white);
	draw_set_font(RobotoMono1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text(x, y - 50, "NEW TOWER");
	draw_text(x, y+ 50, "UNLOCKED!");

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}