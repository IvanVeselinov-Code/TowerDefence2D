var xpose = x;
var ypose = y;


with(oEnemies_Parent){
	var distance = point_distance(x, y, xpose, ypose);
	
	if (distance < 70){
		hp -= 30;
		instance_destroy(oRockShoot);
	}
	else if (distance < 100){
		hp -= 10;
		instance_destroy(oRockShoot);
	}
}