var nearestEnemy = noone;
var nearestDistance = 0;

if (place_meeting(x, y, oTowerButton) or place_meeting(x, y, oTower)){
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
		oScore.gold--;
		instance_destroy(oGridDraw);
		draw_set_alpha(1);
	}
	else{
		instance_destroy(oGridDraw);
		draw_set_alpha(1);
		instance_destroy();
	}
}

with (oEnemy){
	var distance = point_distance(x, y, oEnemy.x, oEnemy.y);
	
	if (nearestDistance = 0 or distance < nearestDistance){
		nearestDistance = distance;
		nearestEnemy = id;
	}
}

if (nearestEnemy != noone){
	var angle = point_direction(x, y, nearestEnemy.x, nearestEnemy.y);
	image_angle = angle;
}