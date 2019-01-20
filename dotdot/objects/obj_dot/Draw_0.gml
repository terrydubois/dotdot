color = c_white;
if (obj_control.currentRow == row) {
	color = c_yellow;
}
if (rowSatisfied) {
	hue += 3;
	if (hue > 255) {
		hue = 0;
	}
	color = make_color_hsv(hue, 200, 200);
}
if (special) {
	color = c_red;
}

draw_set_color(color);
draw_set_alpha(1);
draw_set_circle_precision(32);

if (obj_control.currentRow == row) {
	draw_circle(x, y, rad + 5, true);
}
/*
if (rowSatisfied) {
	draw_set_color(c_yellow)
	draw_circle(x, y, rad + 2, false);
}
*/
draw_circle(x, y, rad, false);