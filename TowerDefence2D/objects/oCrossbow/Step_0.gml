event_inherited();

switch(level){
	case 1:
		sprite_index = sTower2;
		maxrange = 200;
		upgradePrice = 100;
		fireRate = 60;
	break;
	case 2:
		sprite_index = sTowerLevel2;
		maxrange = 300;
		upgradePrice = 300;
		fireRate = 30;
	break;
	case 3:
		sprite_index = sTowerLevel3;
		maxrange = 300;
		upgradePrice = 0;
		fireRate = 20;
	break;
}