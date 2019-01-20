currentRow = 0;
currentRowSpawn = 0;

dotAmountList = ds_list_create();
ds_list_add(dotAmountList, 2, 4, 8, 16, 32, 64);
for (var i = 0; i < ds_list_size(dotAmountList); i++) {
	plusDir[i] = 0;
	plusDirDest[i] = 0;
}

dotSpacing = 80;

centerCircleRad = 30;
centerCircleColor = c_white;
centerCircleHue = 0;

alarm[0] = 15;
alarm[1] = 30;

plusLen = 0;

backDotAmount = 8;
for (var i = 0; i < backDotAmount; i++) {
	plusBackHue[i] = 0;
}

canLeft = true;
canRight = true;
canSpace = true;
spaceSpins = 0;

dirIncr = 0;

satisfiedGoals = 0;

victoryPulses = 4;
victoryPulseRate = 90;
victoryPulse = false;

playerScore = 0;
playerScoreDest = 0;

firstPulse = true;

gameover = false;