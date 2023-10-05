draw_self();
if (sprite_index = sTower2){
	draw_set_color(c_green);
	draw_circle(x, y, 100, true);
	draw_set_color(c_red);
	draw_rectangle(x - 32, y - 32, x + 32, y + 32, true);
}