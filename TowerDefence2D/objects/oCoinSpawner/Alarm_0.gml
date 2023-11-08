if (coins != 0){
	instance_create_layer(x, y, layer, oSmallCoin);
	coins -= 1;
	alarm[0] = room_speed * 0.5;
}