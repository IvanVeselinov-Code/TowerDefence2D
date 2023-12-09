
event_inherited();

switch(level){
	case 1:
		sprite_index = sTower2;
		maxrange = 200;
		upgradePrice = 200;
		fireRate = 0.7;
	break;
	case 2:
		sprite_index = sTowerLevel2;
		maxrange = 300;
		upgradePrice = 300;
		fireRate = 0.5;
	break;
	case 3:
		sprite_index = sTowerLevel3;
		maxrange = 300;
		upgradePrice = 0;
		fireRate = 0.3;
	break;
}

if (!global.moveable){

	//Shooting and Rotating
	if (target = noone){
		target = collision_circle(x, y, maxrange, oEnemies_Parent, false, true);
	}
	else{
		if (instance_exists(target) = false or target != collision_circle(x, y, maxrange, oEnemies_Parent, false, true) or target = collision_circle(x, y, maxrange, oTrojanHorseNot, false, true)){
			target = noone;
		}
		else{
			var pointdir = point_direction(x, y, target.x, target.y);
			if (rotating) {image_angle += sin(degtorad(pointdir - image_angle)) * (5 * o2xSpeed.sp);}
			
			if (canShoot = true){
				canShoot = false;
				alarm_set(0, room_speed * (fireRate * o2xSpeed.sp));
				image_speed = 1;
				
				var projectileShoot = instance_create_layer(x, y, "Instances", projectile);
				projectileShoot.dmg = dmg;
				projectileShoot.target = target;
				projectileShoot.direction = point_direction(x, y, target.x, target.y);
				projectileShoot.image_angle = projectile.direction;
				projectileShoot.speed = target.sp * 2;
			}
		}
	}
}