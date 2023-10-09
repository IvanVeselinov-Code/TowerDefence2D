//Timer for when to shoot
var second = current_time;

if (second != time){
	shootTimer++;
}

time = current_time;

//Shooting and Rotating
with (oEnemies_Parent){
	target = false;
}

var closestEnemy = instance_nearest(x, y, oEnemies_Parent);

if (distance_to_object(oEnemies_Parent) <= range){
	closestEnemy.target = true;
	var pointdir = point_direction(x, y, closestEnemy.x, closestEnemy.y);
	image_angle += sin(degtorad(pointdir - image_angle)) * 5; 
	
	if (shootTimer >= 60){
		image_speed = 1;
		instance_create_layer(x, y, "Instances", oArrow);
		oArrow.damage = 10;
		shootTimer = 0;
	}
}



//If the left mouse button is pressed the circle dissapears
/*if (mouse_check_button_pressed(mb_left) and clicked = 1){
	if (active = 1){
		clicked = 2;
	}

	if (clicked = 2) {clicked = 0; active = 0;}
}*/