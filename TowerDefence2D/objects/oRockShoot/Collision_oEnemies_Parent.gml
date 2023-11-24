var xpose = x;
var ypose = y;


with (oEnemies_Parent){
	var distance = point_distance(x, y, xpose, ypose);
	
	if (distance <= 70){
		if (armor > 0){
			armor -= other.dmg;
		}
		else{
			hp -= other.dmg - 5;
		}
	}
	else if (distance <= 100){
		if (armor > 0){
			armor -= other.dmg;
		}
		else{
			hp -= other.dmg - 5;
		}
	}
	flash = 1;
}

instance_destroy();