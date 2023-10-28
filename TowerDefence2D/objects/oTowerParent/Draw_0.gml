draw_self();

if (selected){
	draw_set_color(c_blue);
	draw_circle(x, y, maxrange, true)
	if (minrange > 1) {draw_circle(x, y, minrange, true);}
	draw_set_color(c_red);
	draw_rectangle(x - spriteWidth / 2, y - spriteHeight / 2, x + spriteWidth / 2, y + spriteHeight / 2, true);
}

if (pickupDraw){
	draw_healthbar(x - 32, y - 32, x + 32, y - 16, pickup, c_black, c_blue, c_blue, 0, true, false);
}

if (target != noone and instance_exists(target)){
	draw_line(x, y, target.x, target.y)
}