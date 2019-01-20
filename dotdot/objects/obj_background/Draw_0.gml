plusDir += plusDirIncr;

draw_set_circle_precision(64);
for (var i = 0; i < backStripeAmount; i++) {
	var color = make_color_hsv(hue[i], 200, 150);
	draw_set_color(color);
	//var rad = (timerCircleRad + 100) - (i * obj_control.dotSpacing) + (obj_control.plusLen / 2);
	var rad = (backStripeAmount * obj_control.dotSpacing) - (i * obj_control.dotSpacing) + (obj_control.plusLen / 2)
	draw_circle(room_width / 2, room_height / 2, rad, false);
}

for (var i = 0; i < backStripeAmount; i++) {
	hue[i]++;
	if (hue[i] > 255) {
		hue[i] = 0;
	}
	
	var currentRot = ((360 / backStripeAmount) * i) + plusDir;
	var color = make_color_hsv(hue[i], 200, 180);
	draw_sprite_ext(spr_goal, 0, room_width / 2, room_height / 2, 1, 1, currentRot, color, 0.3);
}

cameraAngleIncr = scr_approach(cameraAngleIncr, cameraAngleIncrDest, 20);
cameraAngle += cameraAngleIncr;
view_set_camera(0, view_camera[0]);
camera_set_view_angle(view_camera[0], cameraAngle);

scoreSize = scr_approach(scoreSize, 1, 12);


draw_set_color(timerCircleColor);
draw_set_alpha(1);
for (var i = 0; i < timerCircleStroke; i += 0.5;) {
	draw_circle(room_width / 2, room_height / 2, timerCircleRad + i + obj_control.plusLen, true);
}


draw_set_color(c_black);
for (var i = 0; i < timerCircleStroke * 13; i += 0.5;) {
	draw_circle(room_width / 2, room_height / 2, timerCircleRad + i + obj_control.plusLen + 100 + (timerCircleStroke), true);
}



scr_drawScore();
/*if (obj_control.gameover) {
	timerCircleStroke = floor(scr_approach(timerCircleStroke, 0, 12));
}
*/