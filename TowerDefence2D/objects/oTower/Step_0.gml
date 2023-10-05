var nearestEnemy = noone;
var nearestDistance = 0;

var second = current_second;

if (second != time){
	shootTimer++;
}

time = current_second;

if (shootTimer = 1){
	instance_create_layer(x, y, "Instances", oArrow);
	shootTimer = 0
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