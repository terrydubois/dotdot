move_towards_point(room_width / 2, room_height / 2, mySpeed);

myRad -= 0.02;
myRad = max(myRad, 0);
if (distance_to_point(room_width / 2, room_height / 2) < 1) {
	instance_destroy();
}

draw_set_alpha(myAlpha);
draw_set_color(c_white);
draw_circle(x, y, myRad, false);