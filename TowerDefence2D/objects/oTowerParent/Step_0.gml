if (global.pausePhase and global.moveable and pickup >= 100){
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
}

if (!global.moveable){
	//Timer for when to shoot
	var second = current_time;

	if (second != time){
		shootTimer++;
	}

	time = current_time;

	//Shooting and Rotating
	with (oEnemies_Parent){
		target = false;
	}

	var closestEnemy = instance_nearest(x, y, oEnemies_Parent);

	if (distance_to_object(oEnemies_Parent) <= maxrange){
		closestEnemy.target = true;
		var pointdir = point_direction(x, y, closestEnemy.x, closestEnemy.y);
		image_angle += sin(degtorad(pointdir - image_angle)) * 5; 
	
		if (shootTimer >= fireRate){
			image_speed = 1;
			instance_create_layer(x, y, "Instances", projectile);
			projectile.damage = 10;
			shootTimer = 0;
		}
	}
}