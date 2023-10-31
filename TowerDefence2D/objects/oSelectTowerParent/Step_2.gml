if (!selected){
	y = ystart + ((room_height / 100 * oScroll.percent) - room_height)
}
else{
	x = lerp(x, xx, 0.2);
	y = lerp(y, yy, 0.2);
}