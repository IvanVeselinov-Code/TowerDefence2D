var xpos = x;
var ypos = y;
with (oEnemies_Parent){
	var distance = point_distance(x, y, xpos, ypos);
	
	if (distance < 70){
		hp -= 30;
	}
	else if (distance < 100){
		hp -= 10;
	}
}

instance_destroy();