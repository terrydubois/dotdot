timerCircleRad = scr_approach(timerCircleRad, timerCircleRadDest, 6);

if (timerCircleRad <= -100) {
	obj_control.gameover = true;
}

timerCircleRad = max(timerCircleRad, -100);
timerCircleRad = min(timerCircleRad, room_width / 2 + 200);