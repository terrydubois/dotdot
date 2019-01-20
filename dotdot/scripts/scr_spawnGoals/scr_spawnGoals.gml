with (obj_goal) {
	instance_destroy();
}

randomise();
for (var i = 0; i < currentRowSpawn; i++) {
	var goalInst = instance_create_layer(room_width / 2, room_height / 2, "LayerGoal", obj_goal);
	goalInst.row = i;
	var currentDotAmount = ds_list_find_value(dotAmountList, i);
	goalInst.dir = (360 / (currentDotAmount * 2)) * (irandom(currentDotAmount * 2));
}

plusLen = 300;
alarm[4] = victoryPulseRate;
victoryPulse = true;

if (firstPulse) {
	firstPulse = false;
	obj_background.alarm[2] = 1;
}
else {
	var playerScoreIncr = (2000 - obj_background.timerCircleRad) / 2;
	playerScoreIncr = max(playerScoreIncr, 1000);
	playerScoreIncr = min(playerScoreIncr, 50);
	
	if (!gameover) {
		playerScoreDest += playerScoreIncr;
		obj_background.timerCircleRadDest = room_width / 2 + 150;
		obj_background.timerCircleSpeed += 0.05;
		obj_background.timerCircleRate -= 10;
		obj_background.timerCircleRate = max(5, obj_background.timerCircleRate);
		obj_background.scoreSize = 2;
	}
	
	obj_background.cameraAngleIncrDest += 0.01;
	if (random(10) >= 5) {
		obj_background.cameraAngleIncrDest *= -1
	}
}