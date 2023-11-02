global.towers = [crossbow, catapult, turtleshield, alhemist];

xx = 100;
yy = 150;
horizontal = 0;

for (var i = 0; i < array_length(global.towers); i++){
	if (horizontal < 3){
		instance_create_layer(xx, yy, "Instances", global.towers[i]);
		xx += 100;
		horizontal++;
	}
	else{
		xx = 100;
		yy += 100;
		instance_create_layer(xx, yy, "Instances", global.towers[i]);
		horizontal = 0;
	}
}