var nearestEnemy = noone;
var nearestDistance = 0;

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
	move_towards_point(nearestEnemy.x, nearestEnemy.y, 8);
}