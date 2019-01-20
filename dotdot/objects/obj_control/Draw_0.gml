draw_set_circle_precision(32);

centerCircleHue += 2;
if (centerCircleHue > 255) {
	centerCircleHue = 0;
}
draw_set_color(c_white);
draw_set_alpha(1);
if (!gameover) {
	for (var i = 0; i < 8; i += 0.5) {
		draw_circle(room_width / 2, room_height / 2, ((currentRow + 1) * dotSpacing) + plusLen + i, true);
	}
}

if (gameover) {
	centerCircleRad = scr_approach(centerCircleRad, 0, 6);
	plusLen = scr_approach(plusLen, 0, 6);
	
	with (obj_goal) {
		instance_destroy();
	}
}
if (centerCircleRad > 0.1) {
	centerCircleColor = make_color_hsv(centerCircleHue, 200, 200);
	draw_set_color(centerCircleColor);
	draw_circle(room_width/ 2, room_height / 2, centerCircleRad + plusLen, false);
}
/*
draw_set_font(fnt_debug);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text(10, 10, "currentRow: " + string(currentRow));
draw_text(10, 30, "currentDotAmount: " + string(ds_list_find_value(dotAmountList, currentRow)));
draw_text(10, 50, "currentRowSpawn: " + string(currentRowSpawn));
draw_text(10, 70, "plusDir[" + string(currentRow) + "]: " + string(plusDir[currentRow]));
draw_text(10, 90, "plusDirDest[" + string(currentRow) + "]: " + string(plusDirDest[currentRow]));
draw_text(10, 110, "dirIncr: " + string(dirIncr));
draw_text(10, 130, "timerCircleRad: " + string(obj_background.timerCircleRad));