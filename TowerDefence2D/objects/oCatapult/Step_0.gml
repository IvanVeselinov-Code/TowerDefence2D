event_inherited();

switch(level){
	case 1:
		sprite_index = sCatapult2;
		minrange = 300;
		maxrange = 600;
		upgradePrice = 10;
		fireRate = 60;
	break;
	case 2:
		sprite_index = sCatapultLevel2;
		minrange = 300;
		maxrange = 600;
		upgradePrice = 10;
		fireRate = 100;
	break;
	case 3:
		sprite_index = sCatapultLevel3;
		minrange = 200;
		maxrange = 600;
		upgradePrice = 0;
		fireRate = 80;
	break;
}