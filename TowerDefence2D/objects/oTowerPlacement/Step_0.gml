if (place_meeting(x, y, oTowerButtonParent) or place_meeting(x, y, oTowerParent) or place_meeting(x, y, oEnemies_Parent) or place_meeting(x, y, oBridge) or place_meeting(x, y, oObsitcleParent) or place_meeting(x, y, oTentParent) or place_meeting(x, y, oWallParent)){
	collision = 1	
}
else{
	collision = 0
}

x = mouse_x;
y = mouse_y;
move_snap(32, 32);

if (oGold.gold >= placementPrice and oLevelStart.placed_towers < oLevelStart.max_towers){
	if ( x > 0 and x < 2465 and y > 0 and y < 1408 and collision = 0 and
	mouse_check_button_pressed(mb_left)){
		var particle4 = part_system_create(ParticleSystem3);
		part_system_position(particle4, x, y);
		var towerPlace = instance_create_layer(x, y, "Instances", tower);
		with (oEnemies_Parent) {mp_grid_clear_all(grid)}
		with (oEnemySpawnerParent) {mp_grid_clear_all(grid)}
		oLevelStart.placed_towers++;
		oIfPathBlocked.lastObject = towerPlace.id;
		oGold.gold -= placementPrice;
		audio_play_sound(PlacementSound, 10, false);
	}
	else if (mouse_check_button_pressed(mb_left)){
		if (!instance_exists(oMessage)){
			instance_create_layer(640, 160, layer, oMessage);
			oMessage.t = "You can't place it here!";
		}
	}
}
else{
	instance_destroy(oGridDraw);
	draw_set_alpha(1);
	instance_destroy();
}

if (flashAlpha > 0){
	flashAlpha -= 0.02;
}
else if (flashAlpha = 0){
	flashAlpha = 1;
}