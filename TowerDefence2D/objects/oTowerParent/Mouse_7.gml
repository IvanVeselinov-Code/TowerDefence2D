

if (pickupDraw){
	pickupDraw = false;
	pickup = 0;
}

if (!global.pausePhase and !global.moveable){
	if (x > 0 and x < 2420 and y > 0 and y < 1440 and !place_meeting(x, y, oTowerButtonParent) and !place_meeting(x, y, oTowerParent) and !place_meeting(x, y, oEnemies_Parent) and !place_meeting(x, y, oBridge) and !place_meeting(x, y, oObsitcleParent) and !place_meeting(x, y, oTentParent)){
		global.moveable = false;
	
		draw_set_alpha(1);
		instance_destroy(oGridDraw);
	}
}
if (global.pausePhase and global.moveable and pickup >= 100){
	if (x > 0 and x < 2420 and y > 0 and y < 1440 and !place_meeting(x, y, oTowerButtonParent) and !place_meeting(x, y, oTowerParent) and !place_meeting(x, y, oEnemies_Parent) and !place_meeting(x, y, oBridge) and !place_meeting(x, y, oObsitcleParent) and !place_meeting(x, y, oTentParent) and !place_meeting(x, y, oWallParent)){
		global.moveable = false;
		pickup = 0;
		oIfPathBlocked.lastObject = id;
		
		with (oEnemies_Parent) {mp_grid_clear_all(grid)}
		with (oEnemySpawnerParent) {mp_grid_clear_all(grid)}
		
		tower_deselect();
		global.selected_tower = noone;
	
		draw_set_alpha(1);
		instance_destroy(oGridDraw);
		
		pickup = 0;
	}
}