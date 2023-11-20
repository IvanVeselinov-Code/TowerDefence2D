/*image_angle = point_direction(x, y, target.x, target.y);
move_towards_point(target.x, target.y, 50);

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
}*/

var sx, sy, tx, ty, dx, dy, mx, my, vx, vy, vl;
sx = src.x; sy = src.y // source position
tx = target.x; ty = target.y // destination position
dx = tx - sx; dy = ty - sy // difference
vl = sqrt(dx * dx + dy * dy) // distance
if (vl != 0) {
    vx = dx / vl; vy = dy / vl
} else {
    vx = 0; vy = 0;
}
if (vl > inner * 2) {
    vl -= inner
    image_alpha = 1
} else {
    image_alpha = max(0, (vl - inner) / inner)
    vl /= 2
}
image_angle = point_direction(sx, sy, tx, ty)
if (vy < 0) {
    vl = min(vl, ((view_y + pad) - sy) / vy)
} else if (vy > 0) {
    vl = min(vl, ((view_y + view_h - pad) - sy) / vy)
}
if (vx < 0) {
    vl = min(vl, ((view_x + pad) - sx) / vx)
} else if (vx > 0) {
    vl = min(vl, ((view_x + view_w - pad) - sx) / vx)
}
x = sx + vx * vl
y = sy + vy * vl