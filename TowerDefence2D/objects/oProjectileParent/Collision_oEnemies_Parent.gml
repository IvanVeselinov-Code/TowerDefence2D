with(other){
	if (armor > 0){
		armor -= dmg;
	}
	else{
		hp -= dmg;
	}
}

instance_destroy();