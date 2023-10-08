function EnemyList(){
	global.enemy_list = ds_list_create();
	ds_list_add(global.enemy_list, oEnemy);
}