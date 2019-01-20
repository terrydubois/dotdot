var val = argument0;
var valDest = argument1;
var dividand = argument2;

if (val < valDest) {
	val += abs(valDest - val) / dividand;
}
else if (val > valDest) {
	val -= abs(valDest - val) / dividand;
}

return val;