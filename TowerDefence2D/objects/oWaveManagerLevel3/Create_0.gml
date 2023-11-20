

instance_create_layer(0, 0, "Instances", oWaveText);
global.wave = 1;
spawn_amount = 5;
spawn_count = 0;
global.spawn_rate = room_speed * 15;
enemy_type = noone;
path = "one";
pathToFollow = path;

prize = 0;

global.progress = 0;
global.maxProgress = 120;

alarm[0] = global.spawn_rate;

/*
	HOW TO USE
	
	
	Create:
	Тука не пипаш нищо. Тук са set-нати variable-ите, които контролират всичко.
	Тук само са зададени, а иначе се променят на друго място.
	
	
	Step:
	Не пипаш нищо.
	
	
	Alarm 0:
	Тук се setup-ват вълните.
	
	1. Имаш switch със стойностине на всяка вълна. Ако искаш да създадеш нова вълна
	просто copy paste-ваш един case и го правиш да отговаря на правилния номер вълна.
	След това в този case set-ваш variable-ите на дадената вълна.
	spawn_amount - колко енемита да се spawn-нат преди да свърши вълната.
	spawn_count - колко енемита са се spawn-али до сега.
	global.spawn_rate - през колко време се spawn-ва енеми.
	enemy_type = вида енеми, който да се spawn-не. Можеш да сложиш choose(oEnemy, oEnemy2, ...), за да избереш на random какво енеми да се spawn-не.
	path - колко на колко пътя да се spawn-ват енемита. Със стрингове е по лесно.
	"one" - първи път
	"two" - втори път
	ако ще има повече ит 3 пътя вече става "three", "four" и тн.
	"all" - да се spawn-ват на всички пътища едновременно.
	"random" - с choose() избираш пътищата и select-ва един път на random.
	Обърни внимание, че за всеки път ще има комие от обекта oEnemySpawner. За сега има само 2 но ако примерно искаш 3-ти път правиш oEnemySpawner3 и го слагаш там, където искаш.
	(Може да се направи и без обекти, а само с координати, но така ще е по-лесно)
	
	2. След switch-а имаш if. В него set-ваш pathToFollow или да е същото като path или да choose-ва ако е "random". Ако имаш повече от 2 пътя отиди и го добави в първата част на if-а.
	
	3. Имаш 3-ти if с още if-ове в него. Според pathToFollowe отиваш и ако трябва добавяш осхте else if-ове за другите пътища като в instance_create_layer не забравяш да смениш
	обекта за координатите.
	Ако си избрал "all" тогава отиваш и copy paste-ваш instance_create_layer за всучки пътища, които имаш
	
	
	:)
*/