if (flash > 0){
	flash -= 0.05;
}

image_angle = direction;

followhp = lerp(followhp, hp, 0.1);
followarmor = lerp(followarmor, armor, 0.1);

mp_grid_path(grid, path, x, y, oEnemyDestroy.x, oEnemyDestroy.y, false);
if (!global.moveable){
	mp_grid_add_instances(grid, oTowerParent, false);
}
mp_grid_add_instances(grid, oObsitcleParent, false);
path_start(path, sp, path_action_stop, true)

if (hp <= 0){
	instance_create_layer(x, y, "Instances", oDeadTrojaHorase);
	audio_play_sound(DeadTrojaHorse, 10, false);
	instance_destroy();
}