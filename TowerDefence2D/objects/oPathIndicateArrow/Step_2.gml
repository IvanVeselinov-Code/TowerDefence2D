image_angle = point_direction(x, y, target.x, target.y);
move_towards_point(target.x, target.y, 100);

x = clamp(x, view_x + 50, view_x + view_w - 50);
y = clamp(x, view_y + 50, view_y + view_h - 50);

if (target.x > view_x and target.x < view_x + view_w){
	if (target.y > view_y and target.y < view_y + view_h){
		visible = false;
	}
	else{
		visible = true;
	}
}
else{
		visible = true;
}