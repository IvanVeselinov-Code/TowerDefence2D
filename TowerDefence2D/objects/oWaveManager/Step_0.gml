var second = current_second;

if (second != time){
	timer++;
}

time = current_second;

switch(timer){
	case 10:
		wave = 2;
		instance_create_layer(0, 0, "Instances", oWaveText);
	break;
}