var target = instance_position(x, y, [obj_student, obj_inviswall]);
if target != noone && target.object_index == obj_student && target.tantrum {
	target.tantrum = false;
	target.tantrum_timeout_counter = 10000;
	global.teacher_score += 10;
	global.chaos = max(0, global.chaos - 5);
	instance_destroy();
} else if target != noone && target.object_index == obj_inviswall {
	instance_destroy();
} else if x > 1920 || x < 0 || y > 1080 || y < 0 {
	//Out of bounds
	instance_destroy();
}