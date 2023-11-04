if (pause){
	
	for (var i = 0; i < array_length(allObjects); i++){
		draw_sprite_ext(allObjects[i, 0], allObjects[i, 1], allObjects[i, 2],
		allObjects[i, 3], allObjects[i, 4], allObjects[i, 5], allObjects[i, 6],
		allObjects[i, 7], allObjects[i, 8]);
	}
	
	draw_set_alpha(0.5);
	draw_rectangle_color(view_x, view_y, view_x + view_w, view_y + view_h,
	c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
	
}