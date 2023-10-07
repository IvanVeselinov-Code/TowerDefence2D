randomise();
var xpos = irandom_range(1, 2559);
var ypos = irandom_range(1, 1439);
var rockType = irandom_range(1, 2);
var rotationRock = irandom_range(1, 4);

if (rocks < 40){
	if (rockType = 1){
		instance_create_layer(xpos, ypos, "Instances", oRock);
		rocks++;
	}
	else if (rockType = 2){
		instance_create_layer(xpos, ypos, "Instances", oBiggerRock);
		
		switch(rotationRock){
			case 1:
				oBiggerRock.image_angle = 0;
			break;
			case 2:
				oBiggerRock.image_angle = 90;
			break;
			case 3:
				oBiggerRock.image_angle = 180;
			break;
			case 4:
				oBiggerRock.image_angle = 270;
			break;
		}
		
		rocks++;
	}
}