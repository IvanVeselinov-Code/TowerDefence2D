var nearestEnemy = noone;
var nearestDistance = range;

//Timer for when to shoot
var second = current_second;

if (second != time){
	shootTimer++;
}

time = current_second;

with (oEnemies_Parent){
	target = false;
}

var closestEnemy = instance_nearest(x, y, oEnemies_Parent);

if (collision_circle(x, y, range, oEnemies_Parent, false, false) != noone){
	closestEnemy.target = true;
	var pointdir = point_direction(x, y, closestEnemy.x, closestEnemy.y);
	image_angle += sin(degtorad(pointdir - image_angle)) * 5; 
	
	if (shootTimer >= 1){
		image_speed = 1;
		instance_create_layer(x, y, "Instances", oArrow);
		shootTimer = 0
	}
}





//Rotating toward the enemy (change later cuz its kinda shit)
/*with (oEnemy){
	var distance = point_distance(x, y, oEnemy.x, oEnemy.y);
	
	if (nearestDistance = 0 or distance < nearestDistance){
		nearestDistance = distance;
		nearestEnemy = id;
	}
}

if (nearestEnemy != noone){
	var angle = point_direction(x, y, nearestEnemy.x, nearestEnemy.y);
	image_angle = angle;
}*/

//If the left mouse button is pressed the circle dissapears
if (mouse_check_button_pressed(mb_left) and clicked = 1){
	if (active = 1){
		clicked = 2;
	}

	if (clicked = 2) {clicked = 0; active = 0;}
}