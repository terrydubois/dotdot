alarm[3] = random_range(1, 10);
var dir = random(360);
var xSpawn = (room_width / 2) + lengthdir_x((room_width * 0.75), dir);
var ySpawn = (room_height / 2) + lengthdir_y((room_width * 0.75), dir);
instance_create_layer(xSpawn, ySpawn, "Instances", obj_particle);