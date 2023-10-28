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
	if (target = noone){
        target = collision_circle(x, y, maxrange, oEnemies_Parent, false, true);
    }
    else{
        if (instance_exists(target) = false or target != collision_circle(x, y, maxrange, oEnemies_Parent, false, true)){
            target = noone;
        }
        else{
            var pointdir = point_direction(x, y, target.x, target.y);
            if (rotating) {image_angle += sin(degtorad(pointdir - image_angle)) * 5;}
     
            if (canShoot = true){

                canShoot = false;
                alarm_set(0, room_speed * fireRate);

                var projectileShoot = instance_create_layer(x, y, "Instances", projectile);
                projectileShoot.dmg = dmg;
                projectileShoot.target = target;
                projectileShoot.direction = point_direction(x, y, target.x, target.y);
                projectileShoot.image_angle = projectile.direction;
                projectileShoot.speed = target.sp * 2;
                image_speed = 1;
            }
        }
    }
}