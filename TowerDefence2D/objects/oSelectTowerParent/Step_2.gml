if (!selected){
	x = lerp(x, x_start, 0.2);
	y = lerp(y, ystart + ((room_height / 100 * oScroll.percent) - room_height), 0.5);
}
else{
	x = lerp(x, xx, 0.2);
	y = lerp(y, yy, 0.2);
}