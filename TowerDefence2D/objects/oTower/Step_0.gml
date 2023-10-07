var nearestEnemy = noone;
var nearestDistance = range;

//Timer for when to shoot
var second = current_second;

if (second != time){
	shootTimer++;
}

time = current_second;

if (collision_circle(x, y, range, oEnemy, false, false) != noone){
	if (shootTimer >= 1){
		image_speed = 1;
		instance_create_layer(x, y, "Instances", oArrow);
		shootTimer = 0
	}
}
if (collision_circle(x, y, range, oEnemy, false, false) = noone){}



/*if (instance_exists(oEnemy)){
	if (point_in_circle(oEnemy.x, oEnemy.y, x, y, range) and shootTimer >= 1){
		image_speed = 1;
		instance_create_layer(x, y, "Instances", oArrow);
		shootTimer = 0;
	}
	else{}
*/



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