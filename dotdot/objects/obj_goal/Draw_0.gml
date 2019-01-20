if (obj_control.gameover) {
	exit;
}

draw_set_color(c_red);
if (satisfied) {
	draw_set_color(c_green);
}

draw_set_alpha(1);
draw_set_circle_precision(32);

for (var i = 0; i < 5; i += 0.5) {
	draw_circle(x, y, rad + 7 + i, true);
}