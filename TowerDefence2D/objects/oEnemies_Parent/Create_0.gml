hp = 100;
sp = 3;
image_speed = 0.3;

grid = mp_grid_create(0, 0, room_width div 32, room_height div 32, 32, 32);
path = path_add();
mp_grid_path(grid, path, x, y, oEnemyDestroy.x, oEnemyDestroy.y, false);