with (other){
	if (armor > 0){
		armor -= other.dmg;
	}
	else{
		hp -= other.dmg;
	}
	flash = 1;
}

instance_destroy();