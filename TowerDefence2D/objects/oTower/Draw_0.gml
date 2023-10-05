draw_self();

if (active = 1){
	draw_set_color(c_green);
	draw_circle(x, y, 50, true)
	clicked = 1;
}

draw_text(0, 0, string(clicked) + string(active))