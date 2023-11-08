event_inherited();

var second = current_second;

if (second != time){
	timer++;
}

time = current_second;

if (timer = 10){
	if(oEnemy3Level.hp < 50 and oEnemy2Level.hp < 50 and oBossLVL1.hp < 650){
	oEnemy3Level.hp += 10;
	oEnemy2Level.hp += 5;
	oBossLVL1.hp += 10;
	}
	var particle = part_system_create(ParticleSystem1);
	part_system_position(particle, x, y);
}