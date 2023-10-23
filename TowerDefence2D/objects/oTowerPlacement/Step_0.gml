if (place_meeting(x, y, oTowerButtonParent) or place_meeting(x, y, oTowerParent) or place_meeting(x, y, oEnemies_Parent)){
	collision = 1	
}
else{
	collision = 0
}

if (!mouse_check_button_released(mb_left) and released = 1){
	x = mouse_x;
	y = mouse_y;
	move_snap(32, 32);
}
else if ( x > 0 and x < 2420 and y > 0 and y < 1440 and collision = 0){
	released = 0;
	
	var towerPlace = instance_create_layer(x, y, "Instances", tower);
	oIfPathBlocked.lastObject = towerPlace.id;
	
	oGold.gold -= placementPrice;
	instance_destroy(oGridDraw);
	DestroyRanges();
	draw_set_alpha(1);
	instance_destroy();
}
else{
	instance_destroy(oGridDraw);
	draw_set_alpha(1);
	DestroyRanges();
	instance_destroy();
}