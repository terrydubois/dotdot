colorList = ds_list_create();
ds_list_add(colorList, c_blue, c_purple, c_navy, c_yellow, c_maroon);

backStripeAmount = 20;
plusDir = 0;
plusDirIncr = 0.2;

for (var i = 0; i < backStripeAmount; i++) {
	hue[i] = (255 / backStripeAmount) * i;
}

cameraAngle = 0;
cameraAngleIncr = 0;
cameraAngleIncrDest = 0.1;
alarm[0] = random_range(600, 2000);

timerCircleRad = room_width / 2 + 150;
timerCircleRadDest = room_width / 2 + 150;
timerCircleStroke = 80;
timerCircleSpeed = 0.45;
timerCircleRate = 180;
timerCircleColor = c_white;
alarm[1] = 20;

scoreSize = 1;
scoreColor1 = c_white;
scoreColor2 = c_white;
scoreColor3 = c_white;
scoreColor4 = c_white;

alarm[3] = random_range(1, 30);