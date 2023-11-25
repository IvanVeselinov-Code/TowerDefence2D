shootTimer = 0;
time = current_time;

released = 1;
collision = 0;
rotating = true

spriteWidth = sprite_get_width(sprite_index);
spriteHeight = sprite_get_height(sprite_index);

selected = false;

pickup = 0;
pickupDraw = false;

name = noone;
price = 0;
minrange = 1;
maxrange = 200;
fireRate = 0.25;
level = 1;
upgradePrice = 0;

wayOfShooting = 1; //1-shooting 2-static
dmg = 5;
projectile = oArrow;
projectileDamage = 10;

canShoot = true;
target = noone;

image_speed = 0;

