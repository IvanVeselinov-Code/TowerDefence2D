draw_self();

if (selected){
	draw_set_color(c_blue);
	draw_circle(x, y, range, true)
	draw_set_color(c_red);
	draw_rectangle(x - 32, y - 32, x + 32, y + 32, true);
}

if (pickupDraw){
	draw_healthbar(x - 32, y - 32, x + 32, y - 16, pickup, c_black, c_blue, c_blue, 0, true, false);
}