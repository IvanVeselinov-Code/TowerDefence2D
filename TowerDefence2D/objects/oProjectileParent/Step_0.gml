var closestEnemy = instance_nearest(x, y, oEnemies_Parent);

if (closestEnemy != noone) {
    move_towards_point(closestEnemy.x, closestEnemy.y, sp);
	
	var pointdir = point_direction(x, y, closestEnemy.x, closestEnemy.y);
	image_angle = pointdir
}