draw_set_alpha(0.3);
draw_set_color(c_black);
draw_rectangle(x_pos, y_pos, x_pos + width, y_pos + height, false);

var enemyCount = instance_number(oEnemies_Parent);

draw_set_alpha(1)
if (instance_exists(oEnemies_Parent)){
	for (var i = 0; i < enemyCount; i++){
		var enemyID = instance_find(oEnemies_Parent, i);
		var xpos = x_pos + enemyID.x * xscale;
		var ypos = y_pos + enemyID.y * yscale;
		draw_circle_color(xpos, ypos, 3, c_red, c_red, false);
	}
}

var towerCount = instance_number(oTowerParent);

if (instance_exists(oTowerParent)){
	for (var o = 0; o < towerCount; o++){
		var towerID = instance_find(oTowerParent, o);
		var xpos2 = x_pos + towerID.x * xscale;
		var ypos2 = y_pos + towerID.y * yscale;
		draw_circle_color(xpos2, ypos2, 3, c_blue, c_blue, false);
	}
}

draw_set_alpha(1);