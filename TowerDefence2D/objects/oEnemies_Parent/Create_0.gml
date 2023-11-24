hp = 100;
followhp = 100;
maxhp = 100;
armor = 100;
followarmor = 100;
maxarmor = 100;

flash = 0;
flashColor = c_white;

sp = 3;
dmg = 50;
damageToTake = 0;

reset_path = false;

image_speed = 0.3;

grid = mp_grid_create(0, 0, room_width div 32, room_height div 32, 32, 32);
path = path_add();
mp_grid_path(grid, path, x, y, oEnemyDestroy.x, oEnemyDestroy.y, false);