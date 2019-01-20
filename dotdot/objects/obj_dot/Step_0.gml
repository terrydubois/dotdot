var len = (row + 1) * obj_control.dotSpacing + obj_control.plusLen;
var currentDir = dir + obj_control.plusDir[row];
if (obj_control.gameover) {
	len = 0;
	if (rad > 0) {
		rad = scr_approach(rad, 0, 12);
	}
}
var xDest = (room_width / 2) + lengthdir_x(len + plusLen, currentDir);
var yDest = (room_height / 2) + lengthdir_y(len + plusLen, currentDir);

x = scr_approach(x, xDest, 4);
y = scr_approach(y, yDest, 4);

if (special) {
	with (obj_goal) {
		if (row == other.row) {
			var dif = abs(dir - (other.dir + obj_control.plusDir[other.row]));
			while (dif >= 360) {
				dif -= 360;
			}
			satisfied = dif < 1;
			if (satisfied) {
				with (obj_dot) {
					if (row == other.row) {
						rowSatisfied = true;
					}
				}
			}
			else {
				with (obj_dot) {
					if (row == other.row) {
						rowSatisfied = false;
					}
				}
			}
		}
	}
}