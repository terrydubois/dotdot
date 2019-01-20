if (!gameover) {
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
			currentRow++;
	}
	else if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
		currentRow--;
	}
}

currentRowSpawn = min(currentRowSpawn, ds_list_size(dotAmountList));
currentRow = min(currentRow, ds_list_size(dotAmountList) - 1);
currentRow = max(currentRow, 0);

var currentDotAmount = ds_list_find_value(dotAmountList, currentRow);
dirIncr = (360 / (currentDotAmount * 2));
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	if (canLeft and !gameover) {
		plusDirDest[currentRow] += dirIncr;
		canLeft = false;
		alarm[2] = 7;
	}
}
else if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	if (canRight and !gameover) {
		plusDirDest[currentRow] -= dirIncr;
		canRight = false;
		alarm[3] = 7;
	}
}
if (keyboard_check_released(vk_left)) {
	canLeft = true;
}
if (keyboard_check_released(vk_right)) {
	canRight = true;
}
if (keyboard_check_pressed(vk_space) and canSpace and !gameover) {
	canSpace = false;
	plusDirDest[currentRow] += 45;
	spaceSpins = 3;
	alarm[5] = 1;
}

for (var i = 0; i < ds_list_size(dotAmountList); i++) {
	plusDir[i] = scr_approach(plusDir[i], plusDirDest[i], 1.5);
}

if (plusLen != 0) {
	if (victoryPulse) {
		plusLen = scr_approach(plusLen, 0, 8);
	}
	else {
		plusLen = scr_approach(plusLen, 0, 4);
	}
}

satisfiedGoals = 0;
for (var i = 0; i < instance_number(obj_goal); i++) {
	var currentGoalInst = instance_find(obj_goal, i);
	if (currentGoalInst.satisfied) {
		satisfiedGoals++;
	}
}
if ((satisfiedGoals >= instance_number(obj_goal) || instance_number(obj_goal) < 1)
&& currentRowSpawn >= ds_list_size(dotAmountList)) {
	if (!gameover) {
		scr_spawnGoals();
	}
}

playerScore = floor(scr_approach(playerScore, playerScoreDest, 24));
playerScore = max(playerScore, 0);