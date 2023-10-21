var closestEnemy = instance_nearest(x, y, oEnemies_Parent);

if (closestEnemy != noone) {
	if (follow_enemy and idk and instance_exists(closestEnemyStart)){
		direction = point_direction(x, y, closestEnemyStart.x, closestEnemyStart.y);
		speed = sp;
	}
	else if (!follow_enemy and idk){
		if (instance_exists(closestEnemyStart)) {direction = point_direction(x, y, closestEnemyStart.x + 15, closestEnemyStart.y + 15);}
		speed = sp;
		idk = false;
		//move_towards_point(closestEnemyStart.x, closestEnemyStart.y, sp);
		//move_towards_point(target.x, target.y, sp);
		//target = noone;
	}
	
	var pointdir = point_direction(x, y, closestEnemy.x, closestEnemy.y);
	image_angle = pointdir
}