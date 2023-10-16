randomize();
var enemyType = choose(oEnemy, oEnemy2);
instance_create_layer(oEnemySpawner.x, oEnemySpawner.y, "Instances", enemyType);
global.lastEnemy = enemyType;
