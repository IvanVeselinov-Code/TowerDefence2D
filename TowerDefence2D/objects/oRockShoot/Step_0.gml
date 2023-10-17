event_inherited();
/*var closestEnemy = instance_nearest(x, y, oEnemies_Parent);
var distanceToEnemy = point_distance(x, y, closestEnemy.x, closestEnemy.y);

if (image_xscale <= 3 and image_yscale <= 3 and grow = true){
image_xscale += 2;
image_yscale += 2;
grow = false;
}

if (image_xscale >= 3 and image_yscale >= 3 and grow = false){
	image_xscale -= 1;
	image_yscale -= 1;
}