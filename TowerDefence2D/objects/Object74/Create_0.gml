towers = [crossbow, catapult, turtleshield, alhemist];
xx = 100;
yy = 150;
horizontal = 0;

for (var i = 0; i < array_length(towers); i++){
	if (horizontal < 3){
		instance_create_layer(xx, yy, "Instances", towers[i]);
		xx += 100;
		horizontal++;
	}
	else{
		xx = 100;
		yy += 100;
		instance_create_layer(xx, yy, "Instances", towers[i]);
		horizontal = 0;
	}
}