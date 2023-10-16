var closestEnemy = instance_nearest(x, y, oEnemies_Parent);

if (closestEnemy != noone) {
	if (follow_enemy){
		move_towards_point(closestEnemy.x, closestEnemy.y, sp);
	}
	else if (!follow_enemy){
		move_towards_point(closestEnemy.x, closestEnemy.y, sp);
		//move_towards_point(target.x, target.y, sp);
		//target = noone;
	}
	
	var pointdir = point_direction(x, y, closestEnemy.x, closestEnemy.y);
	image_angle = pointdir
}