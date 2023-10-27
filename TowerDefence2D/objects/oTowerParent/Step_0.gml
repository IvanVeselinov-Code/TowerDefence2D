if (global.pausePhase and global.moveable and pickup >= 100){
	if (!mouse_check_button_released(mb_left) and released = 1){
		x = mouse_x;
		y = mouse_y;
		move_snap(32, 32);
	}
}

if (!global.moveable){
	//Timer for when to shoot
	var second = current_time;

	if (second != time){
		shootTimer++;
	}

	time = current_time;

	//Shooting and Rotating
	if (target = noone){
		target = collision_circle(x, y, maxrange, oEnemies_Parent, false, true);
	}
	else{
		if (instance_exists(target) = false){
			target = noone;
		}
		else{
			if (canShoot = true){
				canShoot = false;
				alarm_set(0, 20);
				
				var projectile = instance_create_layer(x, y, "Instances", oArrow);
				projectile.dmg = dmg;
				projectile.direction = point_direction(x, y, target.x, target.y);
				projectile.image_angle = projectile.direction;
				projectile.speed = target.sp * 2;
			}
		}
	}
}