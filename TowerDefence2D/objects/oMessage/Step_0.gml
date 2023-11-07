y = lerp(y, ystart - 30, 0.1);

if (fading){
	alpha_fade = lerp(alpha_fade, 0, 0.1);
}

if (alpha_fade <= 0){
	t = "";
	instance_destroy();
}