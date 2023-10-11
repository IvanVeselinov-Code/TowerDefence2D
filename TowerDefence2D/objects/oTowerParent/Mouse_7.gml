pickup = 0;

if (pickupDraw){
	pickupDraw = false;
}

if ( x > 0 and x < 2420 and y > 0 and y < 1440 and !place_meeting(x, y, oTowerButton) and !place_meeting(x, y, oTower) and !place_meeting(x, y, oEnemy)){
	global.moveable = false;
	draw_set_alpha(1);
	instance_destroy(oGridDraw);
}