if (place_meeting(x, y, oTowerButton) or place_meeting(x, y, oTower) or place_meeting(x, y, oEnemy)){
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
else if (released != 0){
	if ( x > 0 and x < 1280 and y > 0 and y < 704 and collision = 0){
		released = 0;
		instance_create_layer(mouse_x, mouse_y, "Instances", oTower)
		oScore.gold--;
		instance_destroy(oGridDraw);
		draw_set_alpha(1);
		instance_destroy();
	}
	else{
		instance_destroy(oGridDraw);
		draw_set_alpha(1);
		instance_destroy();
	}
}