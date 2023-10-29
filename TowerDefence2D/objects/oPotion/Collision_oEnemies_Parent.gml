var xpose = x;
var ypose = y;


with (other){
	var distance = point_distance(x, y, xpose, ypose);
	
	if (distance < 70){
		if (armor > 0){
			armor -= other.dmg;
		}
		else{
			hp -= other.dmg - 5;
		}
	}
}

instance_create_layer(other.x, other.y, "Wall", oPoison)
instance_destroy();