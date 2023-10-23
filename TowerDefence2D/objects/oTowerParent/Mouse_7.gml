pickup = 0;

if (pickupDraw){
	pickupDraw = false;
}

if (!global.pausePhase){
	if (x > 0 and x < 2420 and y > 0 and y < 1440 and !place_meeting(x, y, oCrossbowButton) and !place_meeting(x, y, oCrossbow) and !place_meeting(x, y, oEnemy2Level)){
		global.moveable = false;
	
		draw_set_alpha(1);
		instance_destroy(oGridDraw);
	}
}
else{
	if (x > 0 and x < 2420 and y > 0 and y < 1440 and !place_meeting(x, y, oCrossbowButton) and !place_meeting(x, y, oCrossbow) and !place_meeting(x, y, oEnemy2Level)){
		global.moveable = false;
		pickup = 0;
		oIfPathBlocked.lastObject = id;
		
		tower_deselect();
		global.selected_tower = noone;
	
		draw_set_alpha(1);
		instance_destroy(oGridDraw);
	}
}