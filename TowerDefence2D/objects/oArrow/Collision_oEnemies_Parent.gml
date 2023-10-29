with (other){
	if (armor > 0){
		armor -= other.dmg;
	}
	else{
		hp -= other.dmg;
	}
}

instance_destroy();