if (currentRowSpawn >= ds_list_size(dotAmountList)) {
	exit;
}

alarm[0] = 30;

var dotAmount = ds_list_find_value(dotAmountList, currentRowSpawn);

for (var i = 0; i < dotAmount; i++) {
	var dotInst = instance_create_layer(room_width / 2, room_height / 2, "LayerDot", obj_dot);
	dotInst.dir = (360 / dotAmount) * i;
	dotInst.dirIncr = (360 / dotAmount) * 2;
	dotInst.row = currentRowSpawn;
	dotInst.special = (i == 0);
	dotInst.hue = (255 / dotAmount) * i;
}

currentRowSpawn++;