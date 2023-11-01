var space = 0;
for (var i = 0; i < array_length(oTowersSelect.towers); i++){
	space += 30;
	draw_text(80, space, string(oTowersSelect.towers[i].current_slot));
}