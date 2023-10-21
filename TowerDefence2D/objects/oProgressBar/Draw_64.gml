var vw = camera_get_view_width(view_camera[0]);

draw_healthbar((1280 / 2) / 2, 710, (1280 / 2) + (1280 / 2) / 2, 715, (followProgress / global.maxProgress) * 100, c_black, c_orange, c_orange, 0, true, true);