event_inherited();

switch(level){
	case 1:
		sprite_index = sCatapult2;
		minrange = 300;
		maxrange = 600;
		upgradePrice = 200;
		fireRate = 1.5;
	break;
	case 2:
		sprite_index = sCatapultLevel2;
		minrange = 300;
		maxrange = 600;
		upgradePrice = 300;
		fireRate = 1.2;
	break;
	case 3:
		sprite_index = sCatapultLevel3;
		minrange = 200;
		maxrange = 600;
		upgradePrice = 0;
		fireRate = 1;
		dmg = 40;
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
			if (rotating) {image_angle += sin(degtorad(pointdir - image_angle)) * 5;}
			
			if (canShoot = true){
				canShoot = false;
				alarm_set(0, room_speed * fireRate);
				image_speed = 1;
				
				var projectileShoot = instance_create_layer(x, y, "Instances", projectile);
				if(level = 3){
					projectile.sprite_index = sRockdamage3lvl;
				}
				projectileShoot.dmg = dmg;
				projectileShoot.target = target;
				projectileShoot.direction = point_direction(x, y, target.x, target.y);
				projectileShoot.image_angle = projectile.direction;
				projectileShoot.speed = target.sp * 2;
			}
		}
	}
}