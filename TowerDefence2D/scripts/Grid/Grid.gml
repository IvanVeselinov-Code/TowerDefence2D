function Grid(){
	var w = 2;
	draw_set_color(c_white);
	draw_set_alpha(0.1)
	
	for (var i = 0; i < room_height; i += 32){
		draw_line_width(0, i, room_width, i, w);
	}
	
	for (var i = 0; i < room_width; i += 32){
		draw_line_width(i, 0, i, room_height, w);
	}
}