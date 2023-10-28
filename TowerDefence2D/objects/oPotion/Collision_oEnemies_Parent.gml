/*var xpose = x;
var ypose = y;


with(oEnemies_Parent){
	var distance = point_distance(x, y, xpose, ypose);
	
	if (distance < 70){
		if (armor > 0){
			armor -= dmg;
		}
		else{
			hp -= dmg;
		}
		
		instance_destroy(oPotion);
	}
	
}
*/
instance_create_layer(other.x, other.y, "Wall", oPoison)
instance_destroy()