event_inherited();

var second = current_second;

if (second != time){
	timer++;
}

time = current_second;

if (timer = 10){
	var particle = part_system_create(ParticleSystem1);
	part_system_position(particle, x, y);
}