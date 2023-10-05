draw_self();

if (active = 1){
	draw_set_color(c_green);
	draw_circle(x, y, range, true)
	draw_set_color(c_red);
	draw_rectangle(x - 32, y - 32, x + 32, y + 32, true);
	clicked = 1;
}