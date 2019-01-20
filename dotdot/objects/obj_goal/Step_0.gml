var len = (row + 1) * obj_control.dotSpacing + obj_control.plusLen;

var xDest = (room_width / 2) + lengthdir_x(len, dir);
var yDest = (room_height / 2) + lengthdir_y(len, dir);

x = scr_approach(x, xDest, 4);
y = scr_approach(y, yDest, 4);